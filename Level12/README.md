1. We have already dealt with this problem.
2. While deploying this contract, 3 bytes32 data were entered and were saved in private.
3. As we know nothing is really private in blockchain.
4. We need to know last data array entry and it's first 16 bytes to unlock this contract.
5. await web3.eth.getStorageAt("0x93Cc81C6A849C5204A689bF0be026F6A7e4a04E8",0) gives true. as bool public locked = true is stored at slot 0.
6. slot 1 is taken by uint256 number.
7. slot 2 is taken by uint8, uint8 and uint16 respectively as they only need 4 bytes combined.
8. Next slot 3, 4, 5 are taken by the bytes32[3]=data array.
9. data[2] is at slot 5. 
10. await web3.eth.getStorageAt("0x93Cc81C6A849C5204A689bF0be026F6A7e4a04E8",5) = 0xa3735d7acc5f0bc8bf133f3d142e1ecdae225274145b692fe03871c9a3ecc76d
11. first 16 bytes are 0xa3735d7acc5f0bc8bf133f3d142e1ecd. This is the password. 
12. await contract.unlock("0xa3735d7acc5f0bc8bf133f3d142e1ecd") opens the contract.



