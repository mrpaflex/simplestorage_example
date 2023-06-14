pragma solidity ^0.8.0;
//SPDX-License-Identifier: MIT

//create an interface

interface Regulator{
    function checkvalue(uint amount) external returns (bool);
    function loan() external returns (bool);

}

// create another contract say bank
contract bank is Regulator{
    uint private value;
    address private owner;

    /* function Bank(uint amount) external{
        value = amount;
        owner = msg.sender;
    }*/

    modifier ownerfuc{
        require(owner == msg.sender);
        _;

    }

    function payable withdraw(uint amount)  public ownerfuc{
        if(checkvalue(amount)){
            value -=amount;
        }
        
    }

    function deposit(uint amount) public  {
        value += amount;
    }

    function balance() public view returns(uint){
        return value;
    }

    function checkvalue(uint amount) public view returns (bool){
        return amount <= value;
    }   

    function loan() public view  returns (bool){
        return value > 20;
        }

    
}

contract myfirstcontract is bank{
    uint  bank = 10;
    uint private age;
    string private name;

    function setnameage(string memory _name, uint _age) public{
        name = _name;
        age = _age;
    }

    function getnameage() public view returns (string memory, uint){

        return(name, age);

    }

    
    
}
