extern "C" {
    fn sm_vm_get_balance(addr_ptr: i32, addr_len: i32) -> i32;
    fn sm_vm_set_balance(addr_ptr: i32, addr_len: i32, balance: i32);
}

#[no_mangle]
pub extern "C" fn transfer(from_addr: i32, to_addr: i32, addr_len: i32, amount: i32) -> i32 {
    let from_balance = unsafe { sm_vm_get_balance(from_addr, addr_len) };
    let to_balance = unsafe { sm_vm_get_balance(to_addr, addr_len) };

    // asserting we won't have underflow
    if from_balance <= amount {
        return -1;
    }

    // asserting we won't have overflow
    if to_balance + amount < to_balance {
        return -1;
    }

    let from_new_balance = from_balance - amount;
    let to_new_balance = to_balance + amount;

    unsafe {
        sm_vm_set_balance(from_addr, addr_len, from_new_balance);
        sm_vm_set_balance(to_addr, addr_len, to_new_balance);
    }

    return 0;
}
