Let's analyse the contract,

1. The Telephone contract owner is not you. Try await contract.owner() in the console.
2. You can change owner to yourself by calling function changeOwner function. But tx.origin should not be same as the msg.sender. That is tx to this contract should not originate from your wallet.
3. So, write another contract that call this contract gives your address as the input to changeOwner function.

Note: instance is address of the contract instance of the current level instance (after you clicked get new instance). This can be found in the console. 

Contract code is available at solution.sol

An example of a possible attack is outlined below.

1. Use tx.origin to determine whose tokens to transfer, e.g.
function transfer(address _to, uint _value) {
  tokens[tx.origin] -= _value;
  tokens[_to] += _value;
}
2. Attacker gets victim to send funds to a malicious contract that calls the transfer function of the token contract, e.g.
function () payable {
  token.transfer(attackerAddress, 10000);
}
3. In this scenario, tx.origin will be the victim's address (while msg.sender will be the malicious contract's address), resulting in the funds being transferred from the victim to the attacker.

