//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract reviewsimplestorge{

    uint fanumber;
    //now map name to a number
    mapping(string => uint256) public nametofanumber;

    //write a function to modifer the fanumber
    function storenewfanumber(uint newfanumber) public {
        fanumber = newfanumber;
    }

    //now write a function to view the fanumber.. 
    //please note you can as well view this fanumber by just adding public to the uint fanumber
    // i.e (uint public fanumber) at the top

    //retrive function
    function retrive() public view returns(uint){
        return fanumber;
    }

    //struct 
    struct People{
        string name;
        uint256 fanumber;
    }

    //create a struct array 
    People[] public people;

    // to push or add a function to the struct array you create a fuction
    function addperson(string memory newname, uint newfanumber) public{
        People memory person = People({name: newname, fanumber: newfanumber});
        //now you push or add the newname to the struct array People[]
        people.push(person);
        //mapping link here
        nametofanumber[newname] = newfanumber;

    }
}