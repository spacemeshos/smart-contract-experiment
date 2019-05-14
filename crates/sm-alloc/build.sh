cargo +nightly build --target wasm32-unknown-unknown --release
cp target/wasm32-unknown-unknown/release/*.wasm ../wasm-modules
pushd ../wasm-modules
wapm run wasm2wat sm_alloc.wasm > sm_alloc.wast
popd
