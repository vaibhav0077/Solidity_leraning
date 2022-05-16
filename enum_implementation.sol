// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract enumImplementation{

    enum Status{
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Cancel
    }

    Status public status;


    function setstatus(Status _status) public{
        status = _status;
    }

    function setRej() public{
        status = Status.Rejected;
    }

    function resetStatus() public{
        delete status;
    }

}