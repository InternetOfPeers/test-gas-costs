// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/**
 * @title TestGasCosts
 * @dev TestGasCosts
 */
contract TestGasCosts {

    uint16 private constant PARAM1 = 60177;

    uint public used1;
    uint public used2;
    uint public used3;
    uint public used4;

    function test1() public {
        uint pre = gasleft();
        getValue1(PARAM1, 0);
        used1 = pre - gasleft();
        pre = gasleft();
        getValue1(PARAM1, 1);
        used2 = pre - gasleft();
        pre = gasleft();
        getValue1(PARAM1, 2);
        used3 = pre - gasleft();
        pre = gasleft();
        getValue1(PARAM1, 3);
        used4 = pre - gasleft();
    }

    function getValue1(uint16 four_nibbles, uint16 index) public pure returns(uint16) {
        return (four_nibbles << (15 - index)) >> 15;
    }

    function test2() public {
        uint pre = gasleft();
        getValue2(PARAM1, 0);
        used1 = pre - gasleft();
        pre = gasleft();
        getValue2(PARAM1, 1);
        used2 = pre - gasleft();
        pre = gasleft();
        getValue2(PARAM1, 2);
        used3 = pre - gasleft();
        pre = gasleft();
        getValue2(PARAM1, 3);
        used4 = pre - gasleft();
    }

    function getValue2(uint four_nibbles, uint index) public pure returns(uint) {
        return (four_nibbles << (255 - index)) >> 255;
    }

    function test3() public {
        uint pre = gasleft();
        getValue3(PARAM1, 1);
        used1 = pre - gasleft();
        pre = gasleft();
        getValue3(PARAM1, 2);
        used2 = pre - gasleft();
        pre = gasleft();
        getValue3(PARAM1, 4);
        used3 = pre - gasleft();
        pre = gasleft();
        getValue3(PARAM1, 8);
        used4 = pre - gasleft();
    }

    function getValue3(uint four_nibbles, uint index) public pure returns (uint) {
        return (four_nibbles & index) > 0 ? 1 : 0;
    }

    function test4() public {
        uint pre = gasleft();
        getValue4(PARAM1, 16);
        used1 = pre - gasleft();
        pre = gasleft();
        getValue4(PARAM1, 32);
        used2 = pre - gasleft();
        pre = gasleft();
        getValue4(PARAM1, 64);
        used3 = pre - gasleft();
        pre = gasleft();
        getValue4(PARAM1, 128);
        used4 = pre - gasleft();
    }

    function getValue4(uint four_nibbles, uint index) public pure returns (bool) {
        return (four_nibbles & index) > 0;
    }

    function test5() public {
        uint pre = gasleft();
        getValue1(PARAM1, 0);
        used1 = pre - gasleft();
        pre = gasleft();
        getValue1(PARAM1, 1);
        used2 = pre - gasleft();
        pre = gasleft();
        getValue1(PARAM1, 2);
        used3 = pre - gasleft();
        pre = gasleft();
        getValue1(PARAM1, 3);
        used4 = pre - gasleft();
    }

    function getValue5(uint16 four_nibbles, uint16 index) public view returns(uint16) {
        return (four_nibbles << (15 - index)) >> 15;
    }

}

