// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract BlockchhainMessager 
{
    address public owner;
    uint public counter;
    constructor(){
        owner = msg.sender;
    }  
    string public myMessage = "Hello World";
    function updMessage(string memory _myMessage) public 
    {
        if (msg.sender == owner)
        {
            myMessage = _myMessage;
            counter++;
        }
    }
}