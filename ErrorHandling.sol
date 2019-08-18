
contract TestThrows{
    //assert
    function assertTest() public pure{
        assert(1==2);
    }
    //require
    function testRequire() public pure{
        require(1==2);
    }
    //revert
    function revertTest() public pure{
        revert();
    }
    //throw
/*
    function throwTest() public pure{
        //depreciated in latest version
        throw;
    }
*/
}
