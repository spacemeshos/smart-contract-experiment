#![allow(unused)]

#[cfg(test)]
mod tests {
    extern crate wasmer_runtime;

    use std::cell::Cell;
    use wasmer_runtime::{compile, func, imports, Ctx, Instance, Memory, Module, Value};

    static SM_ALLOC_WASM: &'static [u8] = include_bytes!("../../../sm-wasm-modules/sm_alloc.wasm");
    static SM_ADDR_WASM: &'static [u8] = include_bytes!("../../../sm-wasm-modules/sm_address.wasm");

    #[test]
    fn test_sm_malloc() {
        let sm_alloc_module = compile(&SM_ALLOC_WASM).unwrap();
        let sm_alloc_instance = sm_alloc_module.instantiate(&imports! {}).unwrap();

        let sm_addr_imports = imports! {
            "env" => sm_alloc_instance,
            // "env" => {
            //     "print_addr" => func!(print_addr),
            // },
        };

        let sm_addr_module = compile(&SM_ADDR_WASM).unwrap();
        let sm_addr_instance: Instance = sm_addr_module.instantiate(&sm_addr_imports).unwrap();

        let create_res = sm_addr_instance
            .call("create_addr", &[Value::I32(12)])
            .unwrap();

        if let Value::I32(addr1) = create_res.first().unwrap() {
            let create_res = sm_addr_instance
                .call("create_addr", &[Value::I32(12)])
                .unwrap();

            if let Value::I32(addr2) = create_res.first().unwrap() {
                let ctx = sm_addr_instance.context();
                let mem = ctx.memory(0);
            } else {
                panic!()
            }
        } else {
            panic!()
        }
    }
}
