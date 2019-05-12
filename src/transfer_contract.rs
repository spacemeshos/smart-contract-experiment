use parity_wasm::builder::*;
use parity_wasm::elements::{
    ExportEntry, External, GlobalEntry, ImportEntry, Instruction, Instructions, Internal, Module,
};
use parity_wasm::{builder, elements, serialize};

use wabt;

pub struct TransferContract {}

#[rustfmt::skip]
impl TransferContract {
   pub fn compile() -> Vec<u8> {
        let mut module_builder = ModuleBuilder::new();

        let gas_counter: GlobalEntry = GlobalBuilder::new()
                          .with_type(elements::ValueType::I64)
                          .init_expr(Instruction::I64Const(10))
                          .mutable()
                          .build();

        let get_balance_sig = SignatureBuilder::new()
                        .with_param(elements::ValueType::I64)
                        .with_return_type(Some(elements::ValueType::I64))
                        .build_sig();

        let set_balance_sig = SignatureBuilder::new()
                        .with_params(vec![elements::ValueType::I64, elements::ValueType::I64])
                        .build_sig();

        let main_func_sig = SignatureBuilder::new()
                        .with_params(vec![elements::ValueType::I64, elements::ValueType::I32, elements::ValueType::I32])
                        .with_return_type(Some(elements::ValueType::I64))
                        .build_sig();

        let get_balance_idx: u32 = module_builder.push_signature(get_balance_sig);
        let set_balance_idx: u32 = module_builder.push_signature(set_balance_sig);

        // importing `get_balance` and `set_balance`
        let get_balance = ImportEntry::new("env".to_string(), "get_balance".to_string(), External::Function(get_balance_idx));
        let set_balance = ImportEntry::new("env".to_string(), "set_balance".to_string(), External::Function(set_balance_idx));

        module_builder.push_import(get_balance);
        module_builder.push_import(set_balance);

        // adding `gas` global variable
        let mut module_builder = module_builder.with_global(gas_counter);

        let mut main_insts = Vec::new();
        // incrementing the gas counter by 1
        main_insts.push(Instruction::GetGlobal(0));
        main_insts.push(Instruction::I64Const(20));
        main_insts.push(Instruction::I64Add);
        main_insts.push(Instruction::End);

        let main_body = Instructions::new(main_insts);

        let main_func: FunctionDefinition = FunctionBuilder::new()
                                .with_signature(main_func_sig)
                                .body()
                                    .with_instructions(main_body)
                                    .build()
                                .build();

        module_builder.push_function(main_func);

        // exporting the `main` function
        let main_export = ExportEntry::new("main".to_string(), elements::Internal::Function(2));
         module_builder.push_export(main_export);

        // translating the module to wasm
        let module: Module = module_builder.build();
        let wasm = parity_wasm::serialize(module).unwrap();

        wasm
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    #[ignore]
    fn test_compile_transfer_contract() {
        let wasm = TransferContract::compile();

        // pretty printing
        let wast = wabt::wasm2wat(&wasm).unwrap();
        println!("{}", wast);
    }
}
