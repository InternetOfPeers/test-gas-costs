// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/**
 * @title TestLoops
 * @dev TestLoops
 */
contract TestLoops {
    
    uint public checkpoint;
    
    function testPlusPlusI(uint256 _number) external {
        uint pre = gasleft();
        plusplusi(_number);
        checkpoint = pre - gasleft();
    }

    function plusplusi(uint256 _number) public pure {
        unchecked {
            for (uint256 i; i < _number; ++i) {
                uint256 j = i;
            }
        }
    }

    function testIPlusPlus(uint256 _number) external {
        uint pre = gasleft();
        iplusplus(_number);
        checkpoint = pre - gasleft();
    }

    function iplusplus(uint256 _number) public pure {
        unchecked {
            for (uint256 i; i < _number; i++) {
                uint256 j = i;
            }
        }
    }
}
