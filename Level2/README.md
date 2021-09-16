Let's analyse the contract:

1. If contract name (contract Fallout { ..) and function name (function Fal1out() public payable {..) are same then function is a constructor function. 
2. Constructor function is called during deployment of a contract. msg.sender is obviously the deployer of the contract.
3. In the contract, get new instance will not make you owner of contract because names are not the same.
4. After deployment, call Fal1out() function to take ownership.
5. await contract.Fal1out()
6. Immediately, after deployment (get new instance) await contract.owner() gives you "0x00" as result. 
7. You don't have to send any ether to contract with Fal1out() even though it has msg.value component. Becuase, there is not require line like in previous fallback level asking you to send some non-zero ether.
8. we have hence sent await contract.Fal1out() instead of await contract.Fal1out({value: __}).
9. Now, click submit instance. 

The story of Rubixi is a very well known case in the Ethereum ecosystem. The company changed its name from 'Dynamic Pyramid' to 'Rubixi' but somehow they didn't rename the constructor method of its contract:

contract Rubixi {
  address private owner;
  function DynamicPyramid() { owner = msg.sender; }
  function collectAllFees() { owner.transfer(this.balance) }
  ...
This allowed the attacker to call the old constructor and claim ownership of the contract, and steal some funds. Yep. Big mistakes can be made in smartcontractland.
