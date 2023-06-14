//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract storageexample {

    /*uint public favourNumber;

    function storename(uint _newfavourNumber) public{
        favourNumber = _newfavourNumber;
    }*/

    struct People{
        uint Number;
        string name;

    }
    //create struct array
    People[] public people;

    //create a function to add people to the struct arrays
    function addpeoplename(uint _newNumber, string memory _name) public {
        People memory newpeople= People({Number: _newNumber, name: _name});
        people.push(newpeople);

        // this is same this as above
        //People memory newpeople = People(_newNumber, _name);
        // or this is also same this thing as above
        //people.push(People(_newNumber, _name));
        //or this below
        //people.push(People({Number: _newNumber, name: _name}));

    }


  // people public person = people({favourablyNumber: 2, name: "pafex"});
  
}
