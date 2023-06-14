pragma solidity ^ 0.8.17;
//SPDX-License-Identifier: MIT.

contract Aikrypta {
    mapping(address => uint) public balances;
    mapping(address => mapping(address => uint)) public allowance;

    uint public decimals = 18;
    string public name = "AI Krypta";
    string public symbol = "Aik";
    uint public totalSupply = 1000000;

    event Transfer(address indexed from, address indexed to, uint value);
    event Approval(address indexed owner, address indexed spender, uint value);
    
    //contractor allows
    constructor() {
        balances[msg.sender] = totalSupply;
    }
    function balanceOf(address owner) public view returns(uint) {
        return balances[owner];
    }
    function transfer(address to, uint value) public returns(bool) {
        require(balanceOf(msg.sender)>= value, "insufficient balance");
        balances[to] += value;
        balances[msg.sender] -= value;
    
        emit Transfer(msg.sender, to, value);
        return true;

    }
    
    function transferFrom(address from, address to, uint value) public returns(bool){
    require(balanceOf(from) >= value, "not enough balance");
    require(allowance[from][msg.sender] >= value, "allowance is too low");
    balances[to] += value;
    balances[from] -= value;
    emit Transfer(from, to, value);
    return true;    
    }

    function approve(address spender, uint value) public returns(bool) {
        allowance[msg.sender][spender] = value;
        emit Approval(msg.sender, spender, value);
        return true;
    }


}