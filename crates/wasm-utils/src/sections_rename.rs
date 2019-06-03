use std::path::Path;

use parity_wasm::{
    deserialize_file,
    elements::{ExportEntry, ExportSection, External, ImportSection, Internal, Module},
    serialize_to_file,
};

pub fn rename_file_imported_functions<P, FR>(file_name: P, mut func_renamer: FR)
where
    P: AsRef<Path> + std::fmt::Debug,
    FR: Fn(&[&str]) -> Vec<String>,
{
    patch_wasm_file(file_name, rename_module_imported_functions, func_renamer);
}

pub fn rename_file_exported_functions<P, FR>(file_name: P, mut func_renamer: FR)
where
    P: AsRef<Path> + std::fmt::Debug,
    FR: Fn(&[&str]) -> Vec<String>,
{
    patch_wasm_file(file_name, rename_module_exported_functions, func_renamer);
}

fn rename_module_exported_functions<FR>(module: &mut Module, mut func_renamer: FR)
where
    FR: Fn(&[&str]) -> Vec<String>,
{
    let export = module.export_section_mut();

    if export.is_none() {
        return;
    }

    let export: &mut ExportSection = export.unwrap();

    for entry in export.entries_mut() {
        if let Internal::Function(_) = entry.internal() {
            let func_name = entry.field_mut();
            let mut res = func_renamer(&[func_name]);

            let new_func_name = res.pop().unwrap();
            std::mem::replace(func_name, new_func_name);
        }
    }
}

fn rename_module_imported_functions<FR>(module: &mut Module, mut func_renamer: FR)
where
    FR: Fn(&[&str]) -> Vec<String>,
{
    let import = module.import_section_mut();

    if import.is_none() {
        return;
    }

    let import: &mut ImportSection = import.unwrap();

    for entry in import.entries_mut() {
        if let External::Function(_) = entry.external() {
            let module = entry.module();
            let func = entry.field();

            let res = func_renamer(&[module, func]);

            // let new_module = res
        }
    }
}

fn patch_wasm_file<P, FR, MP>(file_name: P, module_patcher: MP, func_renamer: FR)
where
    P: AsRef<Path> + std::fmt::Debug,
    FR: Fn(&[&str]) -> Vec<String>,
    MP: FnOnce(&mut Module, FR),
{
    let mut module = deserialize_file(&file_name).unwrap();

    module_patcher(&mut module, func_renamer);

    serialize_to_file(file_name, module);
}
