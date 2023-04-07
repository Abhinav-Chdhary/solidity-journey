// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Calculator {
    function add(int a, int b) external pure returns(int){
        return a+b;
    }
    function subtract(int a, int b) external pure returns(int){
        return a-b;
    }
    function multiply(int a, int b) external pure returns(int){
        return a*b;
    }
    function divide(int a, int b) external pure returns(int){
        require(b>0);
        return a/b;
    }
}
