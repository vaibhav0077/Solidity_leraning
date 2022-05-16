// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;


// CallBAck Function

// It is executed whenanon-existent function is called on the contract.
// It is required to be marked external.
// It has no name.
// It has no arguments
// It can not return any thing.
// It can be defined one per contract.
// If not marked payable, it will throw exception if contract receives ether
// It's main use is to directly send the ETH to contract


contract fallback_receive{

    event log(string fun, uint _val, bytes data);

    fallback() external payable {   

        emit log("fallback", msg.value, msg.data);

    }

    receive() external payable{
        emit log("receive", msg.value,"");
    }

    function checkBalance() public view returns(uint){
        return address(this).balance;
    }
}




