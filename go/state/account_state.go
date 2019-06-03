package state

type Account struct {
	nonce uint64
	balance uint32
}

func NewAccount(balance uint32) Account {
	account := Account { nonce: 0, balance: 0 }
	account.SetBalance(balance)
	return account;
}

func (account *Account) GetBalance() uint32 {
	return account.balance
}

func (account *Account) SetBalance(balance uint32) {
	account.balance = balance
}
