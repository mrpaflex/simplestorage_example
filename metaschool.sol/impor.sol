//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.0/contracts/token/ERC20/ERC20.sol";
//import "github/OpenZeppelin/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";


abstract contract mytoken is ERC20 {
        //this is for supply of the token
    uint totalsupply = 10000;
    

    constructor() {
        _mint(msg.sender, totalsupply);

    }

    //to reward miners
    function minerreward() public {
        _mint(block.coinbase, 500);
    }

}
