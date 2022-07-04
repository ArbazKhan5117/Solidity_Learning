// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;
contract setArray{
    uint[5] public arr=[10,20,30,40,50];
    function setArr (uint index, uint value) public {
        arr[index]=value;
    }
    function length () public view returns (uint){
        return arr.length;

    }
}