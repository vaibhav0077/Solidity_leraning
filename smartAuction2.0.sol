// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;


contract smartAuction{

    address payable public  auctioneer;
    uint public startBlock;
    uint public endBlock;

    

    enum Auction_state {Started, Running, Ended, Cancelled}

    Auction_state public auctionState;

    uint public highest_bid;
    uint public highest_payable_bid;
    uint public bid_inc;

    address payable public highest_bidder;

    mapping(address => uint) public bids;

    constructor(){
        auctioneer = payable(msg.sender);
        startBlock = block.number;
        auctionState =  Auction_state.Running;
        endBlock = startBlock + 10; // 1 block = 15 seconds
        bid_inc = 1 ether;
    }

    modifier notOwner(){
        require(msg.sender != auctioneer, "Owner Cannot bid");
        _;
    }

    modifier Owner(){
        require(msg.sender == auctioneer, "Owner Cannot bid");
        _;
    }

    modifier started(){
        require(block.number>startBlock, "Start Block must be greater than total block");
        _;
    }
    modifier ending(){
        require(block.number<endBlock, "Auction is not Ended yet");
        _;
    }

    function cancelAuction() public Owner{

        auctionState = Auction_state.Cancelled;

    }

    function endAuction() public Owner{

        auctionState = Auction_state.Ended;

    }

    function min(uint _x , uint _y) private pure returns(uint){

        if(_x <= _y){
            return _x;
        }
        return _y;
    }

    function bid() payable public notOwner started ending{
        
        require(auctionState == Auction_state.Running);
        require(msg.value >= 1 ether);

        uint currentBid = bids[msg.sender] + msg.value;

        require(currentBid > highest_payable_bid, "Increase You  Bid Valu than");

        bids[msg.sender] = currentBid;

        if(currentBid < bids[highest_bidder]){
            highest_payable_bid = min(currentBid+bid_inc, bids[highest_bidder]);
        }
        else{
            highest_payable_bid = min(currentBid, bids[highest_bidder]+bid_inc);
            highest_bidder = payable(msg.sender);
        }

    }

    function finalizeAuction() public {
        require(auctionState == Auction_state.Cancelled || auctionState == Auction_state.Ended || block.number > endBlock);
        require(msg.sender == auctioneer || bids[msg.sender] > 0);


        address payable person ;
        uint value;

        if(auctionState == Auction_state.Cancelled){
            person = payable(msg.sender);
            value = bids[msg.sender];
        }

        else{
            if(msg.sender == auctioneer){
                person = auctioneer;
                value = highest_payable_bid;
            }
            else{
                if(msg.sender == highest_bidder){
                    person = highest_bidder;
                    value = bids[highest_bidder] - highest_payable_bid;
                }
                else{
                    person = payable(msg.sender);
                    value = bids[msg.sender];
                }
            }
        }
        bids[msg.sender] = 0;
        person.transfer(value);

    }
}