
# Ethernaut Level 12 Privacy
- This level is Privacy Problem, where we need to unlock the vault by setting locked to false.
- For solving this challenge, we need to understand storage layout of the contract
- 256 bits are stored as 1 slot and less than them will store into 1 slot by packing with another varaibles.
- We can use web3 folder from console to get the location of bytes32 data[2] location.
- and by extracting 16 bytes from left to right passess to the unlock the contract.
# Code
```javascript
await web3.eth.getStorage('contract_address',5,console.log);
// will get the value stored at data[2] location.
await contract.unlock('first 16 bytes of above answer');
```
# Preventive Measures
-  Never store private data in blockchain.
 



