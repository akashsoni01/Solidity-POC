pragma solidity ^0.5.0;
interface Regulator{
    function checkValue(uint amount) external returns (bool);
    function loan() external returns (bool);
}

contract Bank is Regulator{
    uint private value;
    constructor(uint amount) public {
        value = amount;
    }
    function deposit(uint amount) public{
        value = value + amount;
    }
    function withdraw(uint amount) public {
        if(checkValue(amount)){
            value = value - amount;
        }
    }
    function balance() public view returns (uint){
        return value;
    }
    function loan() public  returns (bool){
        return value > 0;
    }
    function checkValue(uint amount) public returns (bool){
        return value >= amount;
    }
    
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
