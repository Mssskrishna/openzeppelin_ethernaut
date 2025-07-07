# Ethernaut Level 1 Fallback
Level 1 - fallback
1. claim ownership of the contract and then
2. reduce the balance to 0

steps to solve the fallback level
1. by examining the code, we understand that when a contributor send the value greater than owner he become the owner.
2. but it has require function which makes them to call the function nearly thousand times.
3. when you see the receive() function , you understand that value must be greater than 0 and the sender must be contributor before 

we can become the owner by calling
```javascript

await contract.contribute({value: 1000(something)});
await contract.sendTransaction({value:1000(something)});

await contract.withdraw() 
// needs to be called to set the contract balance 0
```