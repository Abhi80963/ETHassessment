# ETHassessment
 `MyToken` Solidity smart contract:

# MyToken Smart Contract

This is a simple ERC-20-like smart contract for a token named "Bitcoin" with the abbreviation "BTC". The contract is written in Solidity and is compatible with version 0.8.18 of the Solidity compiler.

## Features

- **Token Name:** Bitcoin
- **Token Abbreviation:** BTC
- **Minting Function:** Allows the creation of new tokens.
- **Burning Function:** Allows the destruction of tokens.
- **Total Supply Tracking:** Keeps track of the total supply of tokens.
- **Balance Tracking:** Keeps track of the balance of tokens for each address.

## Contract Details

### State Variables

- `string public tokenName`: The name of the token.
- `string public tokenAbbreviation`: The abbreviation of the token.
- `uint public totalSupply`: The total supply of the token.
- `mapping(address => uint) public balances`: A mapping that stores the balance of each address.

### Functions

#### `mint(address _address, uint _values)`

Increases the total supply of tokens and adds the specified amount of tokens to the balance of the given address.

- **Parameters:**
  - `_address`: The address to which the tokens will be minted.
  - `_values`: The amount of tokens to be minted.

#### `burn(address _address, uint _values)`

Decreases the total supply of tokens and deducts the specified amount of tokens from the balance of the given address, if the balance is sufficient.

- **Parameters:**
  - `_address`: The address from which the tokens will be burned.
  - `_values`: The amount of tokens to be burned.

## Usage

### Minting Tokens

To mint tokens, call the `mint` function with the desired address and amount of tokens to be minted.

```solidity
mint(address recipient, uint amount);
```

### Burning Tokens

To burn tokens, call the `burn` function with the desired address and amount of tokens to be burned. Ensure the address has a sufficient balance.

```solidity
burn(address holder, uint amount);
```

## Example

Here is an example of how to interact with the contract:

```solidity
// Create an instance of the contract
MyToken myToken = new MyToken();

// Mint 1000 tokens to address 0x123...
myToken.mint(0x123..., 1000);

// Burn 500 tokens from address 0x123...
myToken.burn(0x123..., 500);

// Check the total supply
uint total = myToken.totalSupply(); // 500

// Check the balance of address 0x123...
uint balance = myToken.balances(0x123...); // 500
```

## License

This project is licensed under the MIT License. See the LICENSE file for details.
```

Feel free to customize this README.md file further based on your specific needs or additional features you may add to the smart contract.
