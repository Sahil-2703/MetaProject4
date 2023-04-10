// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract Project1
{
    string public tokenName = "Sahil";
    string public tokenAbbrv = "Singh";
    uint public totalSupply = 0;

    mapping(address => uint) public balances;

    function mint(address to, uint value) public 
    {
        totalSupply += value;
        balances[to] += value;
    }

    function burn(address from, uint value) public
    {
        if(balances[from]>=value)
        {
            totalSupply -= value;
            balances[from] -= value;
        }
    }
}