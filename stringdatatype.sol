// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;



contract stringImpl{

    string public str;

    constructor(){
        str = "set by constructor funxtion";
    }

    function changestr() public{
        str = "String chaged";
    }

    function localstrdeclare() public pure returns(string memory){
        string memory str2 = "local string";
        return str2;
    }

    function localstrdeclare1(string memory _x) public pure returns(string memory){
        // string memory str2 = "local string";
        return _x;
    }
}