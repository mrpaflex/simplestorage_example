pragma solidity ^0.8.17;
//SPDX-License-Identifier: MIT

contract solitest {
    uint storedData;
    string father = "death";

        constructor() {
            storedData = 10;
            
        } 

        function getResult() public payable returns(uint) {
            uint a = 2;
            uint c = 4;
            uint result = c + a;
            return result;
    }
}