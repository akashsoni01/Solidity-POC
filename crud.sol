pragma solidity ^0.5.0;

contract Crud{
    struct User{
        uint id;
        string name;
    }
    User[] public users;
    uint public nextId;
    //create
    function create(string memory name) public{
        users.push(User(nextId,name));
        nextId = nextId +1;
    }
    //update User
    function update(uint id,string memory name) public {
        uint index = find(id);
        users[index].name = name;
    }
    //delete User
    //read User
    //find User
    function find(uint id) public view returns(uint){
        for ( uint i = 0 ; i < users.length ; i++){
            if(users[i].id == id){
                return i;
            }
        }
        revert('Uesr not Found!');
    }
}