// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract bytesDataStructureDene{

    bytes3 public tem1 ;
    bytes5 public tem2 ;
    bytes public tem3;

    function setvalue() public {
        tem1 = "abc";
        tem2 = "aabbc";
        tem3 = "aaaa";
    }


    function puchvalueintemp() public{
        tem3.push("z");
    }

}
