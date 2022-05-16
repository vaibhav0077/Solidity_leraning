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

    function funB() public pure virtual returns(string memory){
        return "Hello from contract AAAAA";
    }
}

contract B is A{
    uint public b;

    constructor(){
        b = 389;
        a = 98;
    }

    function funBB() public{
        b = 89;
    }

    function funB() public pure virtual override returns(string memory){
        return "Hello from contract bbbbbb";
    }
}
contract C is B{
    function funB() public pure override(A,B) returns(string memory){
        return "Hello from contract CCCCCC";
    }
}



