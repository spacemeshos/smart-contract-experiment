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

        // we initialize `acc` with 0
        let acc_var: GlobalEntry = GlobalBuilder::new()
                          .with_type(elements::ValueType::I64)
                          .init_expr(Instruction::I64Const(0))
                          .mutable()
                          .build();

        let get_balance_sig = SignatureBuilder::new()
                        .with_param(elements::ValueType::I64)
                        .with_return_type(Some(elements::ValueType::I64))
                        .build_sig();

        let set_balance_sig = SignatureBuilder::new()
                        .with_params(vec![elements::ValueType::I64, elements::ValueType::I64])
                        .build_sig();

        let run_contract_sig = SignatureBuilder::new()
                        .with_params(vec![elements::ValueType::I64, elements::ValueType::I64, elements::ValueType::I64])
                        .with_return_type(Some(elements::ValueType::I64))
                        .build_sig();

        let get_balance_idx: u32 = module_builder.push_signature(get_balance_sig);
        let set_balance_idx: u32 = module_builder.push_signature(set_balance_sig);

        // importing `get_balance` and `set_balance`
        let get_balance = ImportEntry::new("env".to_string(), "get_balance".to_string(), External::Function(get_balance_idx));
        let set_balance = ImportEntry::new("env".to_string(), "set_balance".to_string(), External::Function(set_balance_idx));

        module_builder.push_import(get_balance);
        module_builder.push_import(set_balance);

        // adding `acc` global variable
        let mut module_builder = module_builder.with_global(acc_var);

        let mut run_insts = Vec::new();
        run_insts.push(Instruction::GetLocal(0));  // asking for balance for address given as input parameter #0
        run_insts.push(Instruction::Call(0));      // calling `get_balance`

        run_insts.push(Instruction::GetLocal(1));  // asking for balance for address given as input parameter #1
        run_insts.push(Instruction::Call(0));      // calling `get_balance`

        // |                              |
        // |   * top of the stack *       |
        // |                              |
        // | balance of address param #1  |
        // | ---------------------------- |
        // | balance of address param #0  |
        // |______________________________|

        run_insts.push(Instruction::I64Add);

        // save (balance of address #0) + (balance of address #1) into `acc
        run_insts.push(Instruction::SetGlobal(0));

        // return the value of `acc`
        run_insts.push(Instruction::GetGlobal(0));
        run_insts.push(Instruction::End);

        let run_func = FunctionBuilder::new()
                        .with_signature(run_contract_sig)
                            .body()
                            .with_instructions(Instructions::new(run_insts))
                            .build()
                        .build();

        module_builder.push_function(run_func);

        // exporting the `run_contract` function
        let run_contract_export = ExportEntry::new("run_contract".to_string(), elements::Internal::Function(2));
         module_builder.push_export(run_contract_export);

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
