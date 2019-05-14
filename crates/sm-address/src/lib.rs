#![no_std]

extern "C" {
    fn sm_alloc(size: i32) -> i64;
}

#[no_mangle]
#[inline(never)]
pub fn create_addr32() -> *mut u8 {
    let addr = unsafe { sm_alloc(32) };

    addr as *mut u8
}

#[panic_handler]
fn panic(_info: &core::panic::PanicInfo) -> ! {
    loop {}
}
