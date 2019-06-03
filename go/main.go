package main

// #include <stdlib.h>
//
// extern int32_t get_balance(void *context, int32_t addr_ptr, int32_t addr_len);
// extern void set_balance(void *context, int32_t addr_ptr, int32_t addr_len, int32_t balance);
import "C"

import (
	"fmt"
	"unsafe"
	"github.com/YaronWittenstein/smart-contract-experiment/address"
	"github.com/YaronWittenstein/smart-contract-experiment/state"
	wasm "github.com/wasmerio/go-ext-wasm/wasmer"
)

var gs state.GlobalState = state.NewGlobalState()

//export get_balance
func get_balance(context unsafe.Pointer, addr_ptr int32, addr_len int32) int32 {
	address := address.Address{0, 0, 0, 0, 0}
	account := gs.GetAccount(address)
	balance := account.GetBalance()

	fmt.Println("get_balance address: ", address);
	fmt.Println("balance: ", balance)

	return (int32)(balance)
}

//export set_balance
func set_balance(context unsafe.Pointer, addr_ptr int32, addr_len int32, balance int32) {
	address := address.Address{0, 0, 0, 0, 0}
	account := gs.GetAccount(address)
	newBalance := (uint32)(balance)

	fmt.Println("set_balance address: ", address);
	fmt.Println("new balance: ", newBalance)

	account.SetBalance(newBalance)
}

func main() {
	// creating accounts
	addr1 := address.Address{0, 0, 0, 0, 0}
	addr2 := address.Address{0, 0, 0, 0, 1}
	account1 := state.NewAccount(1000)
	account2 := state.NewAccount(100)

	gs.AddAccount(addr1, &account1)
	gs.AddAccount(addr2, &account2)

	transfer_bytes, _ := wasm.ReadBytes("../sm-wasm-modules/sm_transfer.wasm")

	imports := wasm.NewImports()
	imports.Append("get_balance", get_balance, C.get_balance)
	imports.Append("set_balance", set_balance, C.set_balance)

	instance, _ := wasm.NewInstanceWithImports(transfer_bytes, imports)
	defer instance.Close()

	transfer := instance.Exports["transfer"]
	result, _ := transfer(50, 2000, 20, 50)

	fmt.Println(result)
}
