// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;

contract conditions{
    function getValue (int a) public pure returns (string memory){
        string memory value;
        if(a < 0){
            value = 'less than zero';
        }else if(a==0){
            value = 'equal to zero';
        }else{
            value = 'greater than zero';
        }
        return value;
    }
}