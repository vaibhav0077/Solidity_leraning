// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract inheritanceImplementation{

    function funct1() public pure returns(string memory){
        return "I m Function One in Contract First";
    }

    function funct2() public pure returns(string memory){
        return "I m Function Two in Contract First";
    }

    function funct3() public pure virtual returns(string memory){
        return "I m Function Three in Contract First";
    }

    function funct4() public pure virtual returns(string memory){
        return "I m Function Four in Contract First";
    }
}


contract anotherFunction is inheritanceImplementation{

    function funct3() public pure override returns(string memory){
        return "I m Function Three in Contract Second";
    }

    function funct4() public pure virtual override returns(string memory){
        return "I m Function Four in Contract Second";
    }

}

contract extraFunction is anotherFunction{

    function funct4() public pure override returns(string memory){
        return "I m Function Four in Contract Third";
    }

    
}