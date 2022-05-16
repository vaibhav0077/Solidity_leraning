// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract reqiureImplementation{

    address public owner = msg.sender;
    uint public age = 25;

    function Checkrequire(uint _x) public{
        require(_x > 2, "INVALID INPUT , must greater than 2"); // If require is true than code will go further else it return error
        age = age+ _x;
    }

    function setAge() public{
        // if(msg.sender == owner){
        //     age = age+age;
        // }
        require(msg.sender == owner, "You are not Owner");
         age = age+age;
    }
}

