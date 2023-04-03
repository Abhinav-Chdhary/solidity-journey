// SPDX-License-Identifier: MIT
// A simple program to declare and set 4 types of variables.
pragma solidity ^0.8.7;

contract HelloWorld{
    string public myString;
    bool myBool;
    uint myInteger;
    struct myInfo{
        string name;
    }
    myInfo myInfoStruct;

    function setMyString(string memory _urString) public {
        myString = _urString;
    }

    function setMyBool(bool _urBool) public {
        myBool = _urBool;
    }

    function setMyInteger(uint _urInteger) public {
        myInteger =_urInteger;
    }

    function setMyName(string memory _urName) public {
        myInfoStruct.name = _urName;
    }
}
