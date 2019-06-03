package main

// #include <stdlib.h>
//
// extern int32_t sm_vm_get_balance(void *context, int32_t addr_ptr, int32_t addr_len);
// extern void sm_vm_set_balance(void *context, int32_t addr_ptr, int32_t addr_len, int32_t balance);
import "C"

import (
	"fmt"
	"unsafe"
	"github.com/spacemeshos/smart-contract-experiment/address"
	"github.com/spacemeshos/smart-contract-experiment/state"
	wasm "github.com/wasmerio/go-ext-wasm/wasmer"
)

var gs state.GlobalState = state.NewGlobalState()

//export sm_vm_get_balance
func sm_vm_get_balance(context unsafe.Pointer, addr_ptr int32, addr_len int32) int32 {
	fmt.Print("get-balance address: ", addr_ptr);

	address := address.Address{1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
	account := gs.GetAccount(address)
	balance := account.GetBalance()
	fmt.Println(",  balance: ", balance)

	return (int32)(balance)
}

//export sm_vm_set_balance
func sm_vm_set_balance(context unsafe.Pointer, addr_ptr int32, addr_len int32, balance int32) {
	fmt.Print("set-balance address: ", addr_ptr);
	address := address.Address{1, 1, 1, 1, 1, 1, 1, 1, 1, 1}

	// address := readAddressFromWasmer(memory, addr_ptr, addr_len)

	account := gs.GetAccount(address)
	newBalance := (uint32)(balance)

	fmt.Println(" ,  new balance:", newBalance)

	account.SetBalance(newBalance)
}

func main() {
	// ```
	// creating two accounts:
	// addr1 is initialized with balance=1000
	// addr2 is initialized with balance=100
	// ```

	addr1 := address.Address{1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
	addr2 := address.Address{2, 2, 2, 2, 2, 2, 2, 2, 2, 2}
	account1 := state.NewAccount(1000)
	account2 := state.NewAccount(100)
	gs.AddAccount(addr1, &account1)
	gs.AddAccount(addr2, &account2)

	// we want to transfer `50` units from `addr1` to `addr2`
	// expected result:
	// ```
	// addr1: 95   (1000 - 50)
	// addr2: 150  (1000 + 50)
	// ```

	transferBytes, _ := wasm.ReadBytes("../sm-wasm-modules/sm_transfer.wasm")

	imports := wasm.NewImports()
	imports.Append("sm_vm_get_balance", sm_vm_get_balance, C.sm_vm_get_balance)
	imports.Append("sm_vm_set_balance", sm_vm_set_balance, C.sm_vm_set_balance)

	instance, _ := wasm.NewInstanceWithImports(transferBytes, imports)
	defer instance.Close()


	// writing to wasmer memory the args for `transfer`
	memory := instance.Memory.Data()
	writeAddressToWasmer(memory, addr1, 0)
	writeAddressToWasmer(memory, addr2, 10)

	transfer := instance.Exports["transfer"]
	result, _ := transfer(0, 10, 10, 50)

	fmt.Println(result)
}

func writeAddressToWasmer(memory []byte, address address.Address, offset uint) {
	for _, b := range address {
		memory[offset] = b
		offset++
	}
}

func readAddressFromWasmer(memory []byte, offset int32, length int32) address.Address {
	addr := address.ZeroAddress()

	for i, b := range memory[offset:offset + length] {
		addr[i] = b
	}

	return addr
}
