pragma solidity ^0.5.0;

library IntExtended{
    function increment(uint _self) public pure returns (uint){
        return _self + 1;
    }
        function decrement(uint _self) public pure returns (uint){
        return _self - 1;
    }
        function incrementWithValue(uint _self,uint value) public pure returns (uint){
        return _self + value;
    }
            function decrementWithValue(uint _self,uint value) public pure returns (uint){
        return _self - value;
    }
}