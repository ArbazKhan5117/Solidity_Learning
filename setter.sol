// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.11;
contract setget{
    string Name;
     uint Age;
     bool AgeRestriction;
    uint age = 10;
    function getter () public view returns(string, uint, bool){
        return age;
    }
    function setter (uint newage) public{
        age = newage;
    }
    
}
