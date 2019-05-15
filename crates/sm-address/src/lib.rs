extern "C" {
    fn sm_alloc(size: i32) -> i64;
}

#[no_mangle]
#[inline(never)]
pub fn create_addr(length: i32) -> *mut u8 {
    let addr = unsafe { sm_alloc(length) };

    addr as *mut u8
}
