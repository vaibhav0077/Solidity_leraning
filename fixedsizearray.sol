// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;


contract fixedsizearray{

    uint[5] arr = [10, 20, 30, 40, 50];

    constructor(){
        // arr[3] = 3000;
        arr = [10, 20, 30, 40, 50];
    }

    function arrinfunction() public pure returns(uint){

        uint[] memory arrinfun = new uint[](3);

        arrinfun[1]=30;
        return arrinfun[1];
    }

    function getarr() public view returns(uint[5] memory){
        return arr;
    }



}