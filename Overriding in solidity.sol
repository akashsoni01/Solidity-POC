pragma solidity ^0.5.0;


contract Bank{
    uint private value;
    constructor(uint amount) public {
        value = amount;
    }
    function deposit(uint amount) public{
        value = value + amount;
    }
    function withdraw(uint amount) public {
        value = value - amount;
    }
    function balance() public view returns (uint){
        return value;
    }
    //how to make abstract function
    function loan() public  returns (bool);
}

contract FirstContract is Bank(10){ 
    string private name ;
    uint private age;
    function getName() public view returns (string memory){
        return name;
    }
    function setName(string memory newName) public{
        name = newName;
    }
    function getAge() public view returns (uint){
        return age;
    }
    function setAge(uint newAge) public{
        age = newAge;
    }
    function loan() public returns (bool){
        return true;
    }
}
