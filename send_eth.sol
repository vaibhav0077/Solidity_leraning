// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// SEND, TRANSFER, CALL three method to send ether
// SEND -> return boolean value -> limit max 2300 gas transcation return false 
// SEND -> also use all gas , nothing revert 

// TRANSFER -> max 2300 gas , also revert the changes if transcation fail

// CALL -> dyanmic ga linit set bu us , return two values 1. bool, 2. sedn some data in bytes


contract sendETH{
    // address payable public getter = payable(0x03C6FcED478cBbC9a4FAB34eF9f40767739D1Ff7);


    receive() external payable{

    }

    function checkBalance() public view returns(uint) {
        return address(this).balance;
    } 

    function SEND(address payable getter) public payable{
        bool isSend = getter.send(msg.value); //DIRECT SEND FROM ONE ACCOUNT TO ANOTHER ACCOUNT
        require(isSend, "Transcation is Failed");
    }

    function TRANSFER(address payable getter) public{
        getter.transfer(1000000000000000000);
    }

    // function CALL(address payable getter) public{
        
    //     (bool get, )=getter.call{
    //         value:10000000000000000000
    //         // gas:300000
    //     }("");

    function CALL(address payable getter) public{
        (bool sent,)=getter.call{value:1000000000000000000}("");
        require(sent, "Transcation is Failed");
    }
}


// Transferring ETh from one contract to another contract
contract getEth{
    receive() external payable{

    }
    function checkBalance() public view returns(uint) {
        return address(this).balance;
    }
}