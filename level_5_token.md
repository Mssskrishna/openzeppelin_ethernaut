
# Ethernaut Level 5 Token

This is the classical underflow bug which can be solved easily by calling the transfer function

# Code
Copy the level instance into the below level address

why 21 we can use any number but 21 is the smallest number to underflow the case .
```javascript
await contract.transfer('level address',21)
```

# Conclusion
Use safemath from openzeppelin below 0.6.0 for underflow and overflow



