// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract dynamicarray{

    uint[] public num;
    
    function getlength() public view returns(uint){
        return num.length;
    }
    function addToArray(uint _num)public{
        num.push(_num);
    }
    function removeElement()public{
        num.pop();
    }
    function getelements(uint _num)public view returns(uint){
        if(_num < num.length){
            return num[_num];
        }
        return 0;
    }
    
}
