// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract if_else{

    function takeinout(uint _x) public pure returns(string memory){
        
        string memory val;

        if(_x>100){
            val = "Greater Than 100";
        }else if(_x == 100){
            val = "Equal to 100 lll";
        }else{
            val="less than to 100";
        }
        return val;
    }
}