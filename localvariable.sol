// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;


contract localvariable{

    uint public statevarable;
    bool public boolvar = false;
    address public add ;

    constructor(){
        statevarable = 100;
    }   


    function locvariable(uint _x, bool _y, address _z) public returns(uint, bool) {

        uint a = 22 + _x;
        bool var1 = true;

        boolvar = _y;
        add = _z;
        return(a, var1);
    }


}