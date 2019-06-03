package address

type Address = [10]byte

func ZeroAddress() Address {
	return Address{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}
