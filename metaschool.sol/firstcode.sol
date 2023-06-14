pragma solidity ^0.8.0;
//SPDX-License-Identifier: MIT

// first you create the contract name

contract metaschool {

    event Transfer(address indexed from, address indexed to, uint value);
    event Approval(address indexed tokenowner, address indexed spender, uint value);

    string public constant name = "paflex Zks";
    string public constant symbol = "PT";
    uint public constant decimals = 18;
    uint256 totalsupply = 150000;

    address public owner;

    mapping(address => uint) balances;
    mapping(address => mapping(address =>uint)) allowed;


        
    // the second thing is to create a constructor

    constructor (){

        owner = msg.sender;
        balances[owner] = totalsupply;

    }

    function transferto( address receiver, uint value) public returns (bool) {
        require(balances[owner] > value);
                balances[owner] -= value;
                balances[receiver] += value;
                emit Transfer(owner, receiver, value);
                 return true;
    }

    function approval(address delegate, uint value) public returns (bool){
        allowed[owner][delegate] = value;
        emit Approval(owner, delegate, value);
        return true;
    }

    function allowance(address tokenowner, address delegate) public view returns (uint){
        return allowed[tokenowner][delegate];
    }

    function transferFrom(address sender, address buyer, uint value) public returns (bool){
        require(balances[sender]  > value);
        require(allowed[sender][owner] > value);
        balances[sender] -= value;
        allowed[sender][owner] -= value;
        balances[buyer] += value;

        emit Transfer(sender, buyer, value);
        return true;

    }
}