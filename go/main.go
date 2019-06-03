package main

import(
	"fmt"
	wasm "github.com/wasmerio/go-ext-wasm/wasmer"
)

func main() {
	bytes, _ := wasm.ReadBytes("./examples-wasm-modules/simple.wasm")

	instance, _ := wasm.NewInstance(bytes)
	defer instance.Close()

	sum := instance.Exports["sum"]
	result, _ := sum(5, 7)

	fmt.Println(result)
}
