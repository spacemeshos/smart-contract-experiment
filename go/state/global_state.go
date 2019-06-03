package state

import "github.com/YaronWittenstein/smart-contract-experiment/address"

type GlobalState struct {
	accounts map[address.Address]*Account
}

func NewGlobalState() GlobalState {
	return GlobalState { accounts: make(map[address.Address]*Account) }
}

func (gs *GlobalState) AddAccount(addr address.Address, account *Account) {
	gs.accounts[addr] = account
}

func (gs *GlobalState) GetAccount(addr address.Address) *Account {
	return gs.accounts[addr]
}
