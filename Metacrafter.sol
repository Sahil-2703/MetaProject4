// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract myToken is ERC20 {
    constructor() ERC20 ("Mytoken", "DSR"){}


    function mint(address _to, uint amount) public{
        _mint(_to, amount);
    }

    function burn(address _from, uint amount) public{
        _burn(_from, amount);
    }
}