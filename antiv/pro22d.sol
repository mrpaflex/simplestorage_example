pragma solidity ^0.8.17;
//SPDX-License-Identifier: MIT.

contract Firstteet {
    address public owner;
    uint public balance;
    constructor() {
        owner = msg.sender;
    }
    receive() payable external {
        balance += msg.value;
    }
    
    function withdraw(uint amount, address payable destadde) public {
        require(msg.sender == owner, "you are not the owner");
        require(balance <= amount, "Insufficient Fund");
        
        destadde.transfer;
        destadde.balance;
        balance -=amount;
    }
}
