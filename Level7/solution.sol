// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract force {
    
    function forceit(address payable _addr) public payable {
        selfdestruct(_addr);
    }
}
