// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract assert_revert_implememtation{
    address public owner = msg.sender;
    uint public age = 25;

    error revertError(string, address); // Custom Error Create

    // Assert : use for bug detect or For Security  

    function Checkrequire(uint _x) public{
        age = age+ _x;

        if(_x < 2){
            revert revertError("Value of Less Than 2", msg.sender);
        }  
    }

    function setAge() public{
        // if(msg.sender == owner){
        //     age = age+age;
        // }
        // require(msg.sender == owner, "You are not Owner");
        revert("You are not Owner");
         age = age+age;
    }

    // ASSERT 

    function checkownablity() public view{
        assert(owner==0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);
    }
}