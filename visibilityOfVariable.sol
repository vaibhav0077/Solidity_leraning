// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;



contract visibilityImplementation{

    uint private x = 10;
    uint internal y = 20;
    uint public z = 30;


    // private --> ALLOW IN INTERNAL CONTRACT
    // external --> NEVER TALK IN INTERNAK CONTRACT


    function check1() private pure returns(string memory){
        return "private";
    }

    function check2() internal pure returns(string memory){
        return "internal";
    }

    function check3() external pure returns(string memory){
        return "external";
    }

    function check4() public pure returns(string memory){
        return "public";
    }

    function checkall() public view returns(string memory){
        return check4();
    }
}


contract forExternalFunctionImplememtation is visibilityImplementation{

    uint a = y;
    // string b = check3();

    function externalFunctionCalling() public view returns(string memory){
        return check2();
    }
}

contract C{

    visibilityImplementation visibilityObjec = new visibilityImplementation();

    function Caller() public view returns(string memory){
        return visibilityObjec.check3();
    }
}