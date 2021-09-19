1. This is the famous DAO hack or re-entrancy hack that everyone keep talking about
2. As the name suggests, one contracts code re-enters other contract to achieve something malicious.
3. We need to drain the funds in this contract. The withdraw function is the only place to get funds out of the contract.
4. To talk to this contract, we need to satify the require statement. After that there is a call method to send funds back to you.
5. You can create a fallback function in your contract, to call back the withdraw function again. Since balances are changed only after the call to send funds completes, you can keep calling this withdraw function with the fallback recursively many a times ultimately depleting its funds. 
