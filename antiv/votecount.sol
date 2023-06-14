pragma solidity ^0.8.17;
//SPDX-License-Identifier: MIT

contract votecount {
    uint public labour;
    uint public pdpParty;
    uint public apcParty;

    enum voter {voted}
    voter public vote;
    modifier cond (bool condition) {
        require(condition);
        _;
    }

    address public lp;
    address public apc;
    address public pdp;

    constructor(){
        lp = msg.sender;
        apc = msg.sender;
        pdp = msg.sender;
    }

    
    function live() public payable {
        require(msg.sender == lp, "vote not valid");
        require(msg.sender == apc, "vote not valid");
        require(msg.sender == pdp, "vote not valid");
    }

    receive() payable external {
        labour += msg.value;
        pdpParty += msg.value;
        apcParty += msg.value;
    }
}
