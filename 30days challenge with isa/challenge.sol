pragma solidity ^0.8.17;
//SPDX-License-Identifier: Unlicensed

contract dayschallenge30 {
    
    function multiply( uint a, uint b) public pure returns (uint){
        return(a * b);
    }

    /*function iseven( uint a) public pure returns (bool) {
        if(a % 2 == 0 ){
            return true;
        }
            return false;


    }

    */

    function leteven(uint c) public pure returns(bool) {
        require(c % 2 == 0);
                return true;
    }
}