// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract payableImplementation{

    address payable public owner = payable(msg.sender);

    function getETH() payable public{

    }


    function checkBalance() public view returns(uint){
        return address(this).balance;
    }
}