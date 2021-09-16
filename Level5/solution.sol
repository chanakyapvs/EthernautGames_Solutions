// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

interface IToken{
    function transfer(address _to, uint _value) external returns (bool);
}

contract SolutionL5 {

  function transferToken(address _instance, address _to, uint _value) public {
     IToken instant = IToken(_instance);
     IToken(instant).transfer(_to, _value);
  }
}
