cargo +nightly build --target wasm32-unknown-unknown --release
cp target/wasm32-unknown-unknown/release/*.wasm ../../go/sm-wasm-modules
pushd ../wasm-modules
wapm run wasm2wat sm_address.wasm > sm_address.wast
popd
