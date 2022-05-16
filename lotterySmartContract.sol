// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Lottery{

    address public manager;
    address payable[] public players;


    constructor(){
        manager = msg.sender;
    }

    function alreadyEnteres() view private returns(bool){
        for(uint i=0; i<players.length;i++ ){
            if(msg.sender == players[i]){
                return true;
            }
        }
        return false;
    }

    function enter() payable public{
        require(msg.sender != manager, "Manager cannot enter in Competition");
        require(alreadyEnteres() == false, "Player already Participated");
        require(msg.value >= 1 ether, "Mininmun amount is ! ether");
        players.push(payable(msg.sender));
    }


    function random() view private returns(uint){
        return uint(sha256(abi.encodePacked(block.difficulty, block.number, players)));
    }

    function pickWinner() public{
        require(msg.sender == manager, "Manager only pick the winner");
        uint index = random()%players.length;
        address contractAddress = address(this);
        players[index].transfer(contractAddress.balance);
        players = new address payable[](0);
    }


    function getPlayers() public view returns(address payable[] memory){
        return players;
    }


}

