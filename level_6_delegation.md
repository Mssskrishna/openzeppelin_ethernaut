
# Ethernaut Level 6 Token

- This level is delegatecall problem 
- delegatecall is used for upgradable contracts and proxy contracts
- To solve this level, we should chnage the address of the delegation owner to ourself.


# Code
- To do this, we need to send a transaction from our address to delegation address since it has no function to receive the amount it call fallback function
- In fallback function, it delegatecalls the delegate contract with msg.data which will be provided by us.
- msg.data is data of first 4 bits of keccakhash of pwn() function which is `0xdd365b8b`
```javascript
await sendTransaction({from: our_address,to: delegation_address,data: '0xdd365b8b'})
```
 



