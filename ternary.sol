// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract if_else{

    function takeinout(uint _x) public pure returns(string memory){
        
        string memory val;

        val = _x > 100 ? "Greater  Than 100" : "less than or equal to 100";
        
        return val;
    }
}