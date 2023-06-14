pragma solidity ^ 0.8.17;
//SPDX-License-Identifier: MIT.

contract AntivisToken {
    mapping(address => uint) public balances;

    mapping(address => mapping(address => uint)) public allowance;
    uint public decimals;
    string public name;
    string public symbol;
    uint public totalSupply;

    event transfer(address indexed from, address indexed to, uint value);
    event approval(address indexed owner, address indexed spender, uint value);
    
    //contractor allows
    constructor(string memory _name, string memory _symbol, uint _decimals, uint _totalSupply) {
        name = _name;
        decimals = _decimals;
        symbol = _symbol;
        totalSupply = _totalSupply;
        balances[msg.sender] = _totalSupply;
    }
    function balanceOf(address owner) public view returns(uint) {
        return balances[owner];
    }
    function transferto(address to, uint value) public returns(bool) {
        require(balanceOf(msg.sender)>= value, "insufficient balance");
        balances[to] += value;
        balances[msg.sender] -= value;
    
        emit transfer(msg.sender, to, value);
        return true;

    }
    
    function transferFrom(address from, address to, uint value) public returns(bool){
    require(balanceOf(from) >= value, "not enough balance");
    require(allowance[from][msg.sender] >= value, "allowance is too low");
    balances[to] += value;
    balances[from] -= value;
    emit transfer(from, to, value);
    return true;    
    }
    function approve(address spender, uint value) public returns(bool) {
        allowance[msg.sender][spender] = value;
        emit approval(msg.sender, spender, value);
        return true;
    }


}