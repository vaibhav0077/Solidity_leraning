// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract modifierFunctionImplementation{
    // MAIN USE : to add function pre-request



    modifier samecode(){
        for(uint _i = 0; _i<10; _i++){
            // code
        }

        _; // This is means that go to that function where you called and run that function code

        // Code that is at end & Common in Functions
    }

    function testFun1() public pure samecode returns(string memory){
        // for(uint _i = 0; _i<10; _i++){
        //     // code
        // }
        return "funct! return Somethings";

    }

    function testFun2() public pure samecode returns(uint _x){

        _x = 20; // Its Directly return _x as _x declare in returns statemenst
        
    }

    function testFun3() public view samecode returns(address _add){
            _add = msg.sender;

    }

    uint public age = 30;

    modifier temp(uint _y){
        age+=_y;

        _;
    }
// What is Different Between two below Function ????????

    function changeAgeWReturn(uint _x) public temp(_x) {
        
    }

    function changeAge(uint _x) public temp(_x) returns(uint){
        return age;
    }

}