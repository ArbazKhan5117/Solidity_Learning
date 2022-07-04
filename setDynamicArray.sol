// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;

contract setDynamic{
    uint [] public arr;
    function pushArr (uint item) public {
        arr.push(item);
    }
    function len () public view returns (uint){
        return arr.length;
    }
    function pop () public {
        arr.pop();
    }
}