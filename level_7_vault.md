
# Ethernaut Level 7 Vault

- This level is Vault problem
- In blockchain, every storage variable can be inpected o we should not store passwords.
- To solve this level, we can get the value stored in password from web3 module.

# Code
- To do this, we need to use web3.eth module which has getStorageAt function.
- By tweaking it, we can get the correct value at slot 1,
```javascript
await web3.eth.getStorageAt('contract_address',1,console.log);
// it will give the value in hex at slot 1 which is password 
```