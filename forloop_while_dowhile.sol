// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract if_else{

    function loop() public pure returns(uint){

        uint count = 0;

        // for(uint i=0; i<1; i++){
        //     count+=5;
        // }
        uint j;
        // while(j<10){
        //     count+=10;
        //     j++;
        // }

        do{
            count+=10;
            j++;
        }while(j<100000);

        return count;
    }
}