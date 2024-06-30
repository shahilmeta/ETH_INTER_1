// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract NumberProperties {
    function testRequireIsPerfectSquare(uint _num) public pure returns (string memory) {
        require(_isPerfectSquare(_num), "Number is not a perfect square");
        return "It is a perfect square";
    }

    function testRevertIfNotPerfectSquare(uint _num) public pure returns (string memory) {
        if (!_isPerfectSquare(_num)) {
            revert("Number must be a perfect square");
        }
        return "It is a perfect square";
    }
    
    function _isPerfectSquare(uint _num) internal pure returns (bool) {
        uint sqrtNum = sqrt(_num);
        return sqrtNum * sqrtNum == _num;
    }
    
    function sqrt(uint x) internal pure returns (uint y) {
        uint z = (x + 1) / 2;
        y = x;
        while (z < y) {
            y = z;
            z = (x / z + z) / 2;
        }
    }

    uint public Number = 16; // Example number

    function testAssertIsPerfectSquare() public view returns (string memory) {
        assert(_isPerfectSquare(Number));
        return "Number is indeed a perfect square";
    }
}
