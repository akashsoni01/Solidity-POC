pragma solidity ^0.5.0;

contract AdvanceStorage{
    uint[] public ids;
    //add or append new element
    function addId(uint id) public{
        ids.push(id);
    }
    //return all element
    function getAllID() public view returns(uint[] memory){
        return ids;
    }
    //return an element of given indexed
    function getId(uint position) public view returns(uint){
        return ids[position];
    }
    //return length
    function getLength() public view returns(uint){
        return ids.length;
    }
}
