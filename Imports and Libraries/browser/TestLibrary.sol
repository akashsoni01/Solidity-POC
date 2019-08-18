pragma solidity ^0.5.0;
import "browser/Library.sol";

contract TestLibrary{
    using IntExtended for uint;
//    using IntExtended for *;
//for all type of data type.

    function testIncrement(uint _base)public pure returns (uint){
        return _base.increment();
    }
        function testDecrement(uint _base)public pure returns (uint){
        return _base.decrement();
    }
        function testIncrement(uint _base,uint _value)public pure returns (uint){
        return _base.incrementWithValue(_value);
    }
            function testDecrement(uint _base,uint _value)public pure returns (uint){
        return _base.decrementWithValue(_value);
    }
}