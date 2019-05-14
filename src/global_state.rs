use crate::address::Address;
use std::collections::HashMap;

pub struct GlobalState {
    balances: HashMap<Address, u64>,
}

impl GlobalState {
    pub fn new() -> Self {
        Self {
            balances: HashMap::new(),
        }
    }

    pub fn get_balance(&self, addr: Address) -> u64 {
        *self.balances.get(&addr).unwrap_or_else(|| &0)
    }

    pub fn set_balance(&mut self, address: Address, balance: u64) {
        self.balances.insert(address, balance);
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn get_balance_of_non_existing_account_should_return_0() {
        let mut state = GlobalState::new();

        assert_eq!(0, state.get_balance(Address([0; 20])));
    }

    #[test]
    fn set_balance() {
        let mut state = GlobalState::new();

        let addr = Address([0; 20]);

        state.set_balance(addr, 100);
        assert_eq!(100, state.get_balance(addr));

        state.set_balance(addr, 200);
        assert_eq!(200, state.get_balance(addr));
    }
}
