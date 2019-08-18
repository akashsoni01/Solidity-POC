pragma solidity ^0.5.0;

contract Transection{
    event SenderLogger(address);
    event ValueLogger(uint);
    
    address private owner;
    
    modifier isOwner{
        require(owner == msg.sender);
        _;
    }
    modifier validValue{
        assert(msg.value >= 1 ether);
        _;
    }
    
    constructor() public{
        owner = msg.sender;
    }
    
    function () public payable isOwner validValue{
        SenderLogger(msg.sender);
        ValueLogger(msg.value);
    }
}