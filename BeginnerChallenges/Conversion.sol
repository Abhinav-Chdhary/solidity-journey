// SPDX-License-Identifier: MIT
// A simple contract takes some ether from the user. Find out its value in units of:
//wei
//ether
//gwei
pragma solidity ^0.8.7;

contract Conversion{
    function inEther() public payable returns(uint256){
        return msg.value;
    }
    function inWei() public payable returns(uint256){
        return msg.value*1 ether;
    }
    function inGwei() public payable returns(uint256){
        return msg.value*1 gwei;
    }
}