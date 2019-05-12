use super::transfer_contract::TransferContract;
use wasmer_runtime::{func, imports, instantiate, Ctx, Instance, Value};

struct ContractExecutor;

impl ContractExecutor {
    fn get_balance(_: &mut Ctx, addr: i64) -> i64 {
        100
    }

    fn set_balance(_: &mut Ctx, addr: i64, balance: i64) {}

    pub fn instantiate(wasm: &[u8]) -> Instance {
        let imports = imports! {
            "env" => {
                "get_balance" => func!(Self::get_balance),
                "set_balance" => func!(Self::set_balance),
            },
        };

        let instance = instantiate(&wasm, &imports).unwrap();

        instance
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_contract_executor() {
        let wasm = TransferContract::compile();

        let instance = ContractExecutor::instantiate(&wasm);

        let args = vec![Value::I64(0), Value::I32(0), Value::I32(1)];
        let res = instance.call("main", &args).unwrap();

        assert_eq!(vec![Value::I64(30)], res);
    }
}
