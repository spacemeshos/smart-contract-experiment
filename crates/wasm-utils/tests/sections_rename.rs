// extern crate wasm_utils;
//
// use std::path::Path;
//
// use wasm_utils::rename_file_exported_functions;
//
// #[test]
// #[ignore]
// pub fn test_module_with_no_exports() {
//     let mut called: bool = false;
//
//     let renamer = |_: &str| -> String {
//         called = true;
//         "never called".to_string()
//     };
//
//     let file_path = Path::new("tests/empty_module.wasm");
//
//     rename_file_exported_functions(file_path, renamer);
//
//     assert_eq!(false, called);
// }
//
// #[test]
// pub fn test_module_with_two_function_exports() {
//     let renamer = |func_name: &str| -> String {
//         dbg!(func_name);
//         "bla".to_string()
//     };
//
//     let file_path = Path::new("tests/export_two_funcs.wasm");
//
//     rename_file_exported_functions(file_path, renamer);
// }
