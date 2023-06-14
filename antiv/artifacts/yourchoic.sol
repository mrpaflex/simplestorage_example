pragma solidity ^0.8.18;
//SPDX-License-Identifier: MIT


contract yourchoice{

    string public constant name = "yourchoice";
    uint public constant decimals = 18;
    uint internal constant totalsupply = 1000000;
    string constant public symbol = "Yct";
    
    //address public owner;

    mapping(address => uint) balances;


    constructor() {
        balances[msg.sender] = totalsupply;
    }

    function balanceOf(address owner) public view returns(uint){
        return balances[owner];

    }
    
    function transferTo(address from, address to, uint value) public{
        require(balances[msg.sender] > value && value > 0);
                balances[from] -=value;
                balances[to] +=value;

                //if there was an event up .. i would have emit it here

    }


}