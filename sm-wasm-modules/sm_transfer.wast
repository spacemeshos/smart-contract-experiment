(module
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func))
  (type (;3;) (func (param i32 i32 i32 i32) (result i32)))
  (import "env" "sm_vm_get_balance" (func $sm_vm_get_balance (type 0)))
  (import "env" "sm_vm_set_balance" (func $sm_vm_set_balance (type 1)))
  (func $__wasm_call_ctors (type 2))
  (func $transfer (type 3) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    local.get 0
    local.get 2
    call $sm_vm_get_balance
    local.set 4
    local.get 1
    local.get 2
    call $sm_vm_get_balance
    local.set 5
    i32.const -1
    local.set 6
    block  ;; label = @1
      local.get 4
      local.get 3
      i32.le_s
      br_if 0 (;@1;)
      local.get 5
      local.get 3
      i32.add
      local.tee 7
      local.get 5
      i32.lt_s
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 4
      local.get 3
      i32.sub
      call $sm_vm_set_balance
      local.get 1
      local.get 2
      local.get 7
      call $sm_vm_set_balance
      i32.const 0
      local.set 6
    end
    local.get 6)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 16)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1048576))
  (global (;2;) i32 (i32.const 1048576))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "transfer" (func $transfer)))
