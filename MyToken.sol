// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Token {
    string public name = "Token";
    string public abbrv = "TK";
    uint public totalSupply;

    // Mapping from addresses to balances
    mapping(address => uint) public balances;

    // Mint function to Create New tokens
    function mint(address _to, uint _value) public {
        totalSupply += _value;
        balances[_to] += _value;
    }

    // Burn function to Destroy tokens
    function burn(address _from, uint _value) public {
    if (balances[_from] >= _value) {
        totalSupply -= _value;
        balances[_from] -= _value;
    } else {
        revert("Insufficient balance to burn");
    }
}

}
