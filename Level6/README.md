Let's analyse this,

1. A delegate call basically call another function to use your contract state, your contract's msg.sender, etc.
2. The fallback function here calls pwn() function to call your contract state. So, your contract owner gets changed to msg.sender ie you.
3. what is msg.data, then?
4. If you are calling a function it basically means you are calling the contract with some bytes of data. So if you are calling pwn() function, msg.data is simply first 10 digits of sha3 of "pwn()" string.
5. web3.utils.sha3("pwn()") is 0xdd365b8b15d5d78ec041b851b68c8b985bee78bee0b87c4acf261024d8beabab
6. First ten digits are 0xdd365b8b
7. Let's take another example, coinflip solution had "function Guessflip(bool _guess) public  returns(uint256)" function. We interact with this contract method as await contract.Guessflip(true). But, you can also do it like this 
await contract.sendTransaction({data: 0x1f3691150000000000000000000000000000000000000000000000000000000000000001}). 
8. web3.utils.sha3("Guessflip(bool)") is 0x1f3691159481fdbb1bbb5eff1b787d1caf1614489acb1ef51211476f0b0c723e
9. First 10 digits are 0x1f369115 and input is true so, the msg.data became 0x1f3691150000000000000000000000000000000000000000000000000000000000000001
