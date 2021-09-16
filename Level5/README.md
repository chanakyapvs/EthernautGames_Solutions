Note: Overflows and underflows in solidity have been checked in 8.0 version onwards

let's analyse this contract,
1. Any contract below 0.8.0 version of solidity have to be checked for overflows and underflows in math operations.
2. uint 1-2 will give 2^256.
3. Hence, this require will never fail. 
4. But, balance of msg.sender and to will be taken out and added respectively. So, use a contract to call this function.
5. Use a contract, it need not have any balance, to call this transfer function. You can practically get how much ever value you want more than total supply. 

Overflows are very common in solidity and must be checked for with control statements such as:

if(a + c > a) {
  a = a + c;
}
An easier alternative is to use OpenZeppelin's SafeMath library that automatically checks for overflows in all the mathematical operators. The resulting code looks like this:

a = a.add(c);
If there is an overflow, the code will revert.

- I have got 21001020 in my instance more than total supply = 21000000
