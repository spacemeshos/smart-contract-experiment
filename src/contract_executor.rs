use super::transfer_contract::TransferContract;
use wasmer_runtime::{func, imports, instantiate, Ctx, Instance, Value};

pub struct ContractExecutor;

impl ContractExecutor {
    fn get_addr_balance(addr: i64) -> i64 {
        match addr {
            1000 => 1234,
            2000 => 5678,
            _ => 0,
        }
    }

    fn get_balance(_: &mut Ctx, addr: i64) -> i64 {
        Self::get_addr_balance(addr)
    }

    fn set_balance(_: &mut Ctx, addr: i64, balance: i64) {
        unimplemented!()
    }

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

    fn balance_of(addr: i64) -> i64 {
        ContractExecutor::get_addr_balance(addr)
    }

    #[test]
    fn test_contract_executor() {
        let wasm = TransferContract::compile();

        let instance = ContractExecutor::instantiate(&wasm);

        let args = vec![Value::I64(1000), Value::I64(2000), Value::I64(3000)];

        let res = instance.call("run_contract", &args).unwrap();
        let total_balance = balance_of(1000) + balance_of(2000);
        assert_eq!(vec![Value::I64(total_balance)], res);
    }
}
