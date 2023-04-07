// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Loops {
    function fool() external pure returns(uint){
        uint naturalSum;
        for(uint i=1; i<=100; i++){
            naturalSum+=i;
        }
        return naturalSum;
    }

    function fool2() external pure returns(uint){
        uint evenSum;
        for(uint i=1; i<=1000; i++){
            if(i%2==0)
                evenSum+=i;
        }
        return evenSum;
        //this ran out of gas when GL=300K;
    }
}
