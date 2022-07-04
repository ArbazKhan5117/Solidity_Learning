// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;

contract structMapping{
    struct Student{
        uint class;
        string name;
    }
    mapping (uint => Student) public data;
    function setValues (uint roll, uint _class, string memory _name) public{
        // data[roll] = Student(_class, _name);
        data[roll].class = _class;
        data[roll].name = _name;
    }
}