// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;



contract globalvariable{

    address public owner;
    uint public time;
    uint public diff;
    uint public gascost;



    constructor(){
        owner = msg.sender;
        time = block.timestamp;
        diff = block.difficulty;
        gascost = tx.gasprice;
    }
}