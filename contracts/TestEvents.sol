// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/**
 * @title TestEvents
 * @dev TestEvents
 */
contract TestEvents {
    uint _first = 1;
    uint _second = 2;
    event DataEvent(uint indexed first, uint second);

    uint public checkpoint;
    uint private __first_store;
    uint private __second_store;

    function returnData() private view returns (uint first, uint second) {
        return (_first, _second);
    }

    function emitData() private {
        emit DataEvent(_first, _second);
    }

    function testReturnData() external {
        uint pre = gasleft();
        returnData();
        checkpoint = pre - gasleft();
    }

    function testReturnAndUseData() external {
        uint pre = gasleft();
        (uint __first, uint __second) = returnData();
        checkpoint = pre - gasleft();
        // Do something with returned values. This is done just to be sure the compiler
        // does not apply optimizations if the returned variables are not used
        __first_store = __first * 2;
        __second_store = __second * 2;
    }

    function testEmitData() external {
        uint pre = gasleft();
        emitData();
        checkpoint = pre - gasleft();
    }
}
