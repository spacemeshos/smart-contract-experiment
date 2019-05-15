#[macro_use]
extern crate cfg_if;

cfg_if! {
    if #[cfg(test)] {
        include!("with_std.rs");
    }
    else {
        include!("no_std.rs");
    }
}
