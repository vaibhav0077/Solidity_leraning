// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;


contract hashImplementation{

    function hashkeccak256(uint _x, string memory _str, address _add) public pure returns(bytes32){

        return keccak256(abi.encodePacked(_x, _str, _add));

    }
    function hashshar256(uint _x, string memory _str, address _add) public pure returns(bytes32){
        
        return sha256(abi.encodePacked(_x, _str, _add));

    }
    function hashRipemd160(uint _x, string memory _str, address _add) public pure returns(bytes20){
        
        return ripemd160(abi.encodePacked(_x, _str, _add));

    }
}