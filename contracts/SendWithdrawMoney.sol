// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract SendWithdrawMoney {

    uint public balanceReceived;

    function deposit() public payable {
        balanceReceived += msg.value;
    }

    function getContractBalance() public view returns(uint){
        return address(this).balance;
    }

    function withdrawAll() public {
        payable(msg.sender).transfer(getContractBalance());
    }

    function withdrawToAddress(address to) public {
        payable(to).transfer(getContractBalance());
    }





}
