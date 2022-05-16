// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;


contract simpleFunction{

    uint age = 20;

    function add(uint _x , uint _y) public pure returns (uint){ // pure says that it not changing any internal variables
        return _x + _y;
    }

    function getAge() public view returns(uint){ // view says that it changes the internal variable of contract
        return age;
    }

    function changeAge() public{
        age+=10;
    }
}