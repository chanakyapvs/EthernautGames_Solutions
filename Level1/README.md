Click on Get New Instance: New contract will be deployed. with owner as level instance address

Target: 
- Hack the contract to get back all the ether present in the contract
- Even though you are not owner of the contract 
- And onlyOwner modifier makes owner only to click on withdraw function that transfers all ether in this address (contract) to the owner of the contract
- await contract.owner() gives the current owner of the contract 
- Note, you can call this because owner variable is public 


Let's analyse the contract first:

1. To get all ether, you need to be owner
2. To become owner, you can call fallback function (receive) by sending some non-zero ether and by already having non-zero contributions made to the contract
3. First, contribute to the contract. await contract.contribute({value:1})
4. 1 here refers to wei. lowest denomination in ethereum. 10^(18) wei =1 ether
5. Contribute function check that sent value is less than 0.001 ether (1 wei less than 0.001 ether). It adds 1 wei as contribution of mine to the contract
6. Author of contract meant it such that when total contributions of mine are more than contributions of current owner then I will become owner.
7. Current contributions of owner are taken during the deployment through constructor as 1000 ether
8. You cannot possibly have that much ether in your rinkeby wallet even if you keep call faucets everyday
9. Note: balance of contract is still 1wei not (1000 ether + 1wei) because 1000 ether contribution is not money to contract it is just a number
10. Now, go back to step 3. After you have contributed 1 wei. you have non zero contributions. 
11. Fallback functions are those anyone can interact in a contract. If you type wrong method, a fallback method will be called. Syntax of fallbacks can be seen in the contract code. fallback.sol
12. Call fallback function. await contract.sendTransaction({value:1})
13. We have followed all conditions of step 2. So we became owners. 
14. We became owners eventhough we don't have 1000 ether.
15. Now, call owner function. await contract.owner(). It shows our address.
16. Now, call getContribution function. (await contract.getContribution()).toString(). It will say it is 2 wei. 
17. Now, call withdraw function. (await contract.withdraw()). You will get back the 2 wei amount.
18. Click submit instance

Ponder: 
1. msg.sender is address of the caller
2. msg.value is value of ether sent in that transaction
