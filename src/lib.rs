#![allow(dead_code)]
#![allow(unused)]

extern crate parity_wasm;
extern crate wabt;
extern crate wasmer_runtime;
extern crate wasmer_runtime_core;

mod address;
mod contract_executor;
mod global_state;
mod manual_contract;
mod request;
mod transfer_contract;
