// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract dataLoc{
    uint[] public arr = [1,2 ,3];

    function storageEx() public{

        uint[] storage arrs = arr; // thsi will point the same data in  storage
        arr[1] = 99;
    }

    function memoryEx() public {
        uint[] memory arrm = arr; // it will create new data or copy data 
        arr[1] = 92009;

    }
}