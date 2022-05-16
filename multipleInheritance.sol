// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract A{
    uint public a;

    constructor(){
        a = 155;
    }

    function funA() public{
        a = 15;
    }
}

contract B is A{
    uint public b;

    constructor(){
        b = 389;
        a = 98;
    }

    function funB() public{
        b = 89;
    }
}
contract C is A,B{

}
contract D is B,C{
  
}



