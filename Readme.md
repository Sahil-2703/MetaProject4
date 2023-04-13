Hello there!! 
This is the project based on ERC20 module.

In this project I’ve made my own token with the help of ERC20. In this, I’ve made two function namely, mint and burn.


Mint function :-

function mint(address _to, uint amount) public{
        _mint(_to, amount);
    }

In this mint function, owner can mint the particular amount with the help of an address of sender.



Burn function :-

function burn(address _from, uint amount) public{
        _burn(_from, amount);
    }

In this burn function, owner can burn the minted amount with the help of address of sender.
