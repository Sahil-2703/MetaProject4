# Minting Token

This solidity progrom is based on the ERC20 token where our own token has been made to mint the token from the owner.

## Description

This program is written in the Solidity, a language used to develop a smart contract for ethereum.

## Getting Started

### Execution program 

To run this program you can use any use Remix IDE or any online Solidity IDE.
Firstly in my program there are two functions, namely mint() and burn().
In mint(), we can mint token from the user from the address of user and in burn(), we can burn the minted token easily.
This token is made from ERC20 token that can easily be found on openzipline site.

'''
contract myToken is ERC20 {
    constructor() ERC20 ("Mytoken", "DSR"){}


    function mint(address _to, uint amount) public{
        _mint(_to, amount);
    }

    function burn(address _from, uint amount) public{
        _burn(_from, amount);
    }
}
'''

This code will automatically compile after saving the program but if not then click on the "Solidity Compiler" tab in the left-hand sidebar. 
Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile HelloWorld.sol" button.
After compiling, deploy this contract and after deploying it you'll be able to see the mint() and burn() funtion.
Simply put the address of another account and amount to mint and there you go, you've successfully run this program.

## Author

Sahil Singh