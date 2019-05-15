#[no_mangle]
#[inline(never)]
pub fn sm_alloc(size: i32) -> i64 {
    let layout = std::alloc::Layout::from_size_align(size as usize, 4).unwrap();

    let ptr = unsafe { std::alloc::alloc(layout) };

    ptr as i64
}
