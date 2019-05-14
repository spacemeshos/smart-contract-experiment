use parity_wasm::builder::*;
use parity_wasm::elements::{
    ExportEntry, External, GlobalEntry, ImportEntry, Instruction, Instructions, Internal,
    MemoryType, Module,
};
use std::cell::Cell;

use parity_wasm::{builder, elements, serialize};

use wasmer_runtime::memory::Atomic;

use wasmer_runtime::{
    func, imports, instantiate, memory::MemoryView, units::Pages, Ctx, Export, Instance, Value,
};

use wasmer_runtime_core::import::LikeNamespace;

use wabt;
pub struct TransferContract {}

#[rustfmt::skip]
impl TransferContract {
    pub fn compile() -> Vec<u8> {
        let mut module_builder = ModuleBuilder::new();

        let reserved_memory = MemoryBuilder::new().with_min(1).with_max(None).build();
        module_builder.push_memory(reserved_memory);

        let export_mem = ExportEntry::new("req_mem".to_string(), Internal::Memory(0));

        module_builder.push_export(export_mem);

        let module: Module = module_builder.build();

        let wasm = parity_wasm::serialize(module).unwrap();

        wasm
    }

    pub fn instantiate(wasm: &[u8]) -> Instance {
        let imports = imports! { };

        let instance = instantiate(&wasm, &imports).unwrap();

        instance
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_compile_transfer_contract() {
        let wasm = TransferContract::compile();

        // pretty printing
        let wast = wabt::wasm2wat(&wasm).unwrap();
        println!("{}", wast);

        let mut instance = TransferContract::instantiate(&wasm);
        let ctx = instance.context_mut();

        for cell in ctx.memory(0).view()[0..3].iter() {
            cell.set(0xA);
        }
    }
}
