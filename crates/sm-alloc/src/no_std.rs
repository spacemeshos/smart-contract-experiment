use core::alloc::{GlobalAlloc, Layout};

extern crate wee_alloc;

#[global_allocator]
static ALLOC: wee_alloc::WeeAlloc = wee_alloc::WeeAlloc::INIT;

#[no_mangle]
#[inline(never)]
pub fn sm_alloc(size: i32) -> i64 {
    let layout = Layout::from_size_align(size as usize, 4).unwrap();

    let ptr = unsafe { ALLOC.alloc(layout) };

    ptr as i64
}
