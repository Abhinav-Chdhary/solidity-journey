// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    string public tokenName="SOLID"; //stores token name
    string public tokenAbbrv="SLD"; //Token abbreviation
    uint public supply = 0; //unsigned integer to track total supply

    mapping (address => uint) public addToBalance;
    //mapping from an address to it's balance

    //function to mint token and increment total supply, and balance.
    function mint(address add, uint value) external {
        supply += value; //new supply = supply + value
        addToBalance[add] += value; //new balance of given address = balance of address+value
    }

    //function to decrement total supply and balance
    function burn(address add, uint value) external {
        if(addToBalance[add]>=value){
            //execute only if we have equal to or more balance than the value we are asked to burn
            supply -= value;
            addToBalance[add] = addToBalance[add]-value;
        }
    }

}
