(module
  (type (;0;) (func (param i32) (result i64)))
  (type (;1;) (func))
  (type (;2;) (func (result i32)))
  (import "env" "sm_alloc" (func $sm_alloc (type 0)))
  (func $__wasm_call_ctors (type 1))
  (func $create_addr32 (type 2) (result i32)
    i32.const 32
    call $sm_alloc
    i32.wrap_i64)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 16)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1048576))
  (global (;2;) i32 (i32.const 1048576))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "create_addr32" (func $create_addr32)))
