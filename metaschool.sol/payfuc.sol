//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


contract essessement {
    string public constant name = "paflex zks";
    string public constant symbol = "pxk";
    uint public constant decimals = 18;
    uint public constant totalsupply = 100000000;


    address owner;

    mapping(address => uint) balances;

    constructor () {
        owner = msg.sender;
        balances[owner] = totalsupply;
        
    }

    function transferto(address to, uint value) payable public returns(bool) {
        require(balances[owner] > value && value != 0);
        balances[owner] -= value;
        balances[to] += value;
        return true;
    }

}