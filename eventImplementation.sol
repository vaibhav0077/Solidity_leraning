// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;


contract Eventimpl{

    event balance(address account, string name, uint val);

    function setData(uint _val) public{
        emit balance(msg.sender, "has Value", _val);
    }


}

contract chatApp{

    event chat(address _from, address _to, string message, uint _just);

    function sendMessage(address _to ,string memory _message) public{
        emit chat(msg.sender, _to, _message, 33);

    }
}