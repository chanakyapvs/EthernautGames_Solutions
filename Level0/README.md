- Contract at 0xd991431d8b033ddcb84dad257f4821e9d5b38c33 is the ethernaut contract on Rinkeby
- This level teaches you the basics of interacting with smart contract methods
- Using metamask web3 provider, you will be able to check your address and your balance (await getBalance(player))
- Check the methods present in ethernaut contract from ethernaut abi or from contract in the repo
- "Get new instance" deploys at contract named Instance through ethernaut contract
- Sidebar : Level author seems to be a fan of Douglas Adams 
- Sidebar : I can't really find out significance of 7123949. It has to be a block number that is closer to level author. Alejandro Santander

Interaction steps:
1. contract.info()
2. contract.info1()
3. contract.info2("hello")
4. contract.infoNum()
5. contract.info42()
6. contract.method7123949()
7. contract.password()
8. contract.authenticate("ethernaut0")
9. Submit instance calls getCleared()

Ponder: 
1. Pure functions in the contract do not interact with the state of the contract
2. variables declared as public can be called by the users just like any other funtion
