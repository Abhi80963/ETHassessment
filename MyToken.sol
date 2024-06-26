// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken {
    string public tokenName = "Bitcoin";
    string public tokenAbbreviation = "BTC";
    uint public totalSupply = 0;

    mapping(address => uint) public balances;

    function mint(address _address, uint _values) public {
        totalSupply += _values;
        balances[_address] += _values;
    }
    
    function burn(address _address, uint _values) public {
        if(balances[_address] >= _values) {
            totalSupply -= _values;
        balances[_address] -= _values;
        }
    }
}
