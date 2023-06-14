pragma solidity ^0.8.17;
//SPDX-License-Identifier: MIT

contract Escrow {
    uint public amount;
    address payable public seller;
    address payable public buyer;

    enum State {Created, Locked, Release, Ianctive}
    State public state;

    modifier condition (bool _condition) {
        require(_condition);
        _;
    }


    modifier onlyBuyer() {
        if (msg.sender != buyer)
        _;
    }

    modifier onlySeller() {
        if (msg.sender != seller)
        _;
    }

     

    event conRelease();
    event coinWithdraw();
    constructor() payable {
        seller = payable(msg.sender);
        amount = 1;
        if(amount != 1)
        return;
    }
}