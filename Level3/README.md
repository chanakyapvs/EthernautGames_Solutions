Note: In solution contract (solution.sol)
1. you can make input as memory and take address of contract as input if you wish to save on gas.


Let's analyse the contract:

1. You have consecutively flip a coin and guess the outcome correctly and get it right 10 consecutive times.
2. When you look at the CoinFlip contract, flip function has all the logic in getting the flip of a coin yourself.
3. Integer value of blockhash of previous block on rinkeby is calculated first. (This changes with every transaction (almost always) ie when new block is mined)
4. Quotient of this integer value with Factor is the input. If that quotient is 1 and you guessed it will be true in input, then you will get a win. If the quotient is 0 and you guessed it will be false in input, then you will get a win.
5. If you get 10 consecutive wins, then you win this level.

How do we find the correct guess all the time
1. Write another contract that interacts with this contract only if you have correct guess. 
2. Contract is in the solution.sol
3. Using interfaces you can call another contract. We are calling only flip function. so, we have only flip in the interface.
4. Deploy this solution.sol to rinkeby network using remix or any other environment
5. In remix, methods will be available to you to interact after deployment.
6. Keep entering true or false in the method input and transact with your metamask wallet.
7. Correct guesses will call the original contract with their guess.
8. Go to console of your level 3 challenge and keep checking (await contract.consecutiveWins()).toString(). If it reaches, 10. Then submit the instance.

Generating random numbers in solidity can be tricky. There currently isn't a native way to generate them, and everything you use in smart contracts is publicly visible, including the local variables and state variables marked as private. Miners also have control over things like blockhashes, timestamps, and whether to include certain transactions - which allows them to bias these values in their favor.

To get cryptographically proven random numbers, you can use Chainlink VRF, which uses an oracle, the LINK token, and an on-chain contract to verify that the number is truly random.

Some other options include using Bitcoin block headers (verified through BTC Relay), RANDAO, or Oraclize).


