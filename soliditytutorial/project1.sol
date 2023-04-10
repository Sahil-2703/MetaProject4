// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract crowdFunding 
{
    mapping(address=>uint) public contributors;
    address public manager;
    uint public minimumContribution;
    uint public deadline;
    uint public target;
    uint public raisedAmmount;
    uint public noOfContributor;

    constructor(uint _target, uint _deadline)
    {
        target=_target;
        deadline=block.timestamp+deadline;
        minimumContribution=100 wei;
        manager=msg.sender; 
    }

    function sendEht() public payable
    {
        require(block.timestamp<deadline,"Deadline has passed");
        require(msg.value>minimumContribution,"Minimum contribution is not well");

        if(contributors[msg.sender]==0){
            noOfContributor++;
        }
        contributors[msg.sender] += msg.value;
        raisedAmmount += msg.value;
    }
}