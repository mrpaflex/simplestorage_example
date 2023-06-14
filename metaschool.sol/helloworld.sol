pragma solidity ^0.8.17;
//SPDX-License-Identifier: MIT

contract helloW{

    event msgchanged(string oldmsg, string newmessage);
    string public message;

        constructor(string memory firstinputmessage){
            firstinputmessage = message;
        }

        function update(string memory newmessage) public {
            string memory oldmsg = message;
            newmessage = message;
            emit msgchanged(oldmsg, newmessage);
        }
}
