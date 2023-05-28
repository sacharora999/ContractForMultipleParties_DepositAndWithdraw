// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract ExampleNewMappings {

    mapping(address => uint) public receivedEtherByAcc;
    function sendMoney() public payable
    {
        receivedEtherByAcc[msg.sender] += msg.value;
    }
    function getBalance() public view returns(uint)
    {
        return receivedEtherByAcc[msg.sender];
    }
    function withDrwaAllMoney(address payable _to) public 
    {
        uint amountToPay = receivedEtherByAcc[msg.sender];
        receivedEtherByAcc[msg.sender] = 0;
        _to.transfer(amountToPay);
    }
}