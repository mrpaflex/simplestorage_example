//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract mymood {

   // string  mood;
    //string moodd;

    mapping(address => string) public moods;

    function getMode(address user) public view returns(string memory) {
        //string memory moodd;
        return moods[user];

    }

    function setMode(string memory mood) public {
        moods[msg.sender] = mood;

    }

}