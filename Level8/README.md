Let's analyse this contract,

1. A constructor function takes a bytes32 input and stores it a password. Only when an user enters the same password in unlock function. It unlocks it. But, this is not simple call function.
2. The password is stored as a private data. Private data implies it cannot be accessed by other contracts. But, as we know already everything on blockchain can be read by anyone with right tools.
3. Storage structure of any contract is such that it is given 2^256 slots of 32 bytes each.
4. Take an hexadecimals ie address. hexadecimal digit is (0-15) or (0-9 and A-F). 2^4 possibilities are possible from 4 bits.
5. Without 0x a ethereum address has 40 digits. 40 digits = 160 bits = 20 bytes. 
6. Similarly, uint256 need 32 bytes. 
7. If previous slot didnot use all the bytes and next variable need less storage than remaining bytes in the previous slot. it will take up space in previous slot.
8. For more details, follow this https://solidity-by-example.org/hacks/accessing-private-data/
9. Let's come back to our quest now.
10. Contract has boolean and then a bytes32. boolean takes 1 byte in slot 0 but bytes32 need all 32 bytes, so it moves to slot 1.
11. await web3.eth.getStorageAt("0x4b9045a9c1B3660106216E0B862b733Ed22811CC",1), use this, where address is the contract address.
12. bytes32 password was 0x412076657279207374726f6e67207365637265742070617373776f7264203a29
13. web3.utils.toAscii("0x412076657279207374726f6e67207365637265742070617373776f7264203a29") is 
"A very strong secret password :)"
14. Use await contract.unlock("0x412076657279207374726f6e67207365637265742070617373776f7264203a29"), you will unlock the vault with this. 
