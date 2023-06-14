pragma solidity ^0.8.0;
//SPDX-License-Identifier: MIT

contract myfistc {

    string  myName;
    uint age;

    function setname(string memory name) public {
        myName = name;
    }

    function getname() public pure returns(string memory name){
        return name;
    }

}

//pragma solidity >=0.5.0 <0.6.0;

contract ZombieFactory {

    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct Zombie {
        string name;
        uint dna;
    }

    Zombie[] public zombies;

    function createZombie () public {

        //to pass a new value to the struct array, do this

       // Zombie memory virus;
        //virus = Zombie("antivirs", 29);

        //zombies.push(virus);

        zombies.push(Zombie("Alex", 27));

    }


    function _generateRandomDna(string memory _str) private view returns (uint) {
        keccak256(abi.encodePacked(_str));
        return (dnaModulus);
    }

}