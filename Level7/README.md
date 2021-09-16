Let's analyse this,

1. Here we don't even have fallback payable function to send ether to it. Hell, it does not have any code in it. 
2. But, people can send ether to this contract address. How?
3. If you have contract that has ether and you want to delete the contract you can do it by calling selfdestruct for the contract. It needs a parameter address to which you can send ether. 
4. So, if you selfdestruct a contract that has ether and give the address of this level instance contract in selfdestruct. It will send ether to the contract even though it has no code in it.

Note: 

Hence, never rely on address(this).balance for getting balance of this contract. always store balances in a variable.
