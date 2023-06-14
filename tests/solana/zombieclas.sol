pragma solidity >=0.5.0 <0.6.0;
//nstagrpragma solidity ^0.8.0;

contract ZombieFactory {

    event NewZombie(uint zombieId, string name, uint dna);

    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct Zombie {
        string name;
        uint dna;
    }

    Zombie[] public zombies;
    mapping(uint => address) public zombieToOwner;
    mapping(address => uint) ownerZombieCount;

    function _createZombie(string memory _name, uint _dna) private {
        uint id = zombies.push(Zombie(_name, _dna)) - 1;
        zombieToOwner[id] = msg.sender;
        ownerZombieCount[msg.sender] ++;
        emit NewZombie(id, _name, _dna);
        
    }

    function _generateRandomDna(string memory _str) internal view returns (uint) {
        //this is to generate random number of zombie
        // to do this you use keccak256(abi.encodePacked)
        // note the uint is to change thr generated random figure to number
        uint rand = uint(keccak256(abi.encodePacked(_str)));

        //the generate should have 16 digits wen view
        return rand % dnaModulus;
    }

    
    function createRandomZombie(string memory _name) public {
            require(ownerZombieCount[msg.sender] ==0);
                uint randDna = _generateRandomDna(_name);
                 _createZombie(_name, randDna); 
        
    }

    function feedAndMultiply( uint _zombieId, uint _taregetDna)  public{
        require(msg.sender == zombieToOwner[_zombieId]); 
       Zombie storage myZombie = zombies[_zombieId];
       _targetDna = _targetDna % dnaModulus;
       uint newDna = (myZombie.dna + _targetDna) / 2;
        _createZombie("NoName", newDna);

 }

    

}
