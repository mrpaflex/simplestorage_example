pragma solidity ^0.8.17;
//SPDX-License-Identifier: MIT
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
//import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.8.2/contracts/token/ERC20/extensions/ERC20Capped.sol";

contract tookool is ERC20 {
    address  public owner;

    constructor() ERC20("WayTooBig", "WTB") {
        owner = msg.sender;
        _mint(owner, 4500000*10**18);
    }
}