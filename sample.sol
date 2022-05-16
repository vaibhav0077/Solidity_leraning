// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract ownable{
    address public owner;


    constructor(){
        owner = msg.sender; // its only give address of owner who is deploying th code

    }


    modifier onlyowner(){ // its checks the permission of the 

        require(msg.sender == owner , "not owner");
        _; // What this sign Says ????? IDK
    }

    function setOwner(address _newOwner) public onlyowner{
        require(_newOwner != address(0), "invalid Address");
        owner = _newOwner;
    }

    function onlyowneraccess() public onlyowner{
        // code
    }

    function allhaveaccess() public{
        // code
    }

}