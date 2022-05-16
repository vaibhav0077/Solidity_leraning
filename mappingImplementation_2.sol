// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

struct donor_dts{
    string name;
    uint age;
    string add;
    uint don;
}


contract advmapping{
    mapping(address=>donor_dts) public acc_info;

    function set(string memory _name, uint _age, string memory _add, uint _don) public{

        acc_info[msg.sender] = donor_dts(_name, _age, _add, acc_info[msg.sender].don+_don);

    }

    function delete_info() public{
        delete acc_info[msg.sender];
    }
}
