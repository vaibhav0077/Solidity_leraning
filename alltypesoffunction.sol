// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;




contract allTypesFunction{

    uint public age = 10;

    function viewFuctionImpl() public view returns(uint){
        return age+10;
    }

    function pureFunctionImp() public pure returns(uint){
        return 10;    
    }


    function pureFunctionImp2() public pure returns(uint){
        
        uint x = 20;
        return x;
    }

    function simpleFunctionImp() public{

        age+=10;
    }

}



