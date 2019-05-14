use crate::address::Address;
use std::vec::Vec;

#[repr(C)]
pub struct Request {
    sender: Address,
    contract: Address,
    payload_ptr: *const u8,
    gas_price: u64,
    gas_left: u64,
    gas_total: u64,
}
