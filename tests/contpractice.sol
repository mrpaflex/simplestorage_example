pragma solidity ^0.8.17;
//SPDX-License-Identifier: MIT

contract myasssigment {
    enum action {add, remove, update}

   action  myaction = action.add;
   action  myactions = action.remove;
   action  myactiony = action.update;

   address myAddress;

   function assignaddress()private {
       myAddress = msg.sender;
      // myAddress.transfer;
       myAddress.balance;

   }

   uint[] myArray = [1, 5, 9, 20, 0,6,90];

  // this is working unlike in javascript myArray = [1, 3, 8];

  function arrFun() public{
      myArray.push(1);
      myArray.length;
      myArray[0];
  }
   
    
}


