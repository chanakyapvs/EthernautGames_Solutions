Let's analyse the contract,

1. The smart contract maker wanted to lock tokens till 10 years with lockTokens() modifier and using it for transfer function.
2. But, this is not the only method to transfer tokens.
3. You can use transferFrom, approve, etc from erc20.sol imported.
4. Approve yourself to transfer your tokens, transfer your own tokens to someone else with transferFrom method.
