// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;



contract statevariable{

    uint public var1;

    constructor(){
        var1 = 1000;
    }

    function setvar() public{

        var1 = 2000;
    }
}