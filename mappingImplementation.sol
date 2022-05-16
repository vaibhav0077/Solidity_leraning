// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract mappingImple{

    mapping(uint=>string) emp_id;


    function setID() public{
        emp_id[31] = "vaibhav";
        emp_id[10] = "Akshat";
        emp_id[40]="Rajdeep";
        emp_id[45]="Darshit";
        
        
    }


    function getID(uint _id) public view returns(string memory){
        return emp_id[_id];
    }

}