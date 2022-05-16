// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;


contract immutabilityImplementation{


    string public constant PI = "3.14";

    address public immutable owner;

    address public test = address(5);

    constructor (address _add){
        owner = _add;
    }

    function setAdd() public view returns(address){
        // owner =0x838F9b8228a5C95a7c431bcDAb58E289f5D2A4DC;
        return owner;
    }

}