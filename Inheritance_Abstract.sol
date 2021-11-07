// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

//abstract key word disables the contract from deploying in the Blockchain
abstract contract Base{
    int public x;
    address public owner;
    constructor (){
        x=1;
        owner = msg.sender;
    }
    //function declaration
    function setX(int _x)public virtual;
}

contract child is Base{
    //function definition must be done in child to avoid compiler errors
    function setX(int _x) public override{
        x = _x;
    }
}