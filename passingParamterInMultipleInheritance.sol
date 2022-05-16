// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;


contract A{

    string public name;
    uint public age;

    constructor(string memory _name, uint _age){
        name = _name;
        age = _age;
    }

}

contract B{

    string public add;
    uint public salary;

    constructor(string memory _add, uint _salary){
        add = _add;
        salary = _salary;
    }

}

// Order of Execution 
// 1, A, B, C
contract C is A("Vaibhav", 22), B("Rajkot", 20000){

}


// Order of Execution
// 1, A, B, D
contract D is A,B{
    constructor() A("Vaibhav", 22) B("Rajkot", 20000){

    }
}

// Order of Execution
// 1, B, A, E
contract E is B,A{
    constructor(string memory _name, uint _age ,string memory _add, uint _salary) A(_name, _age) B(_add, _salary){

    }
}



