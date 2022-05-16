// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;


contract fixedsizearray{

    uint[] arr = [10, 20, 30, 40, 50];
    // uint[] arr;

    function getarr() public view returns(uint[] memory){
        return arr;
    }

     


    function updatearr(uint _pos, uint _value) public{
        if(arr.length  > _pos){
            arr[_pos] = _value;
        }else{
            for(uint i = arr.length; i<=_pos; i++){
                if(arr.length != _pos){
                    arr.push(0);
                }else{
                 arr.push(_value);   
                }                
            }
        } 
    }

}