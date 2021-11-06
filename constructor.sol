// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract property{
    int price;
    string location;
    address immutable public owner;
    
    
    constructor(int _price,string memory _location){
        price = _price;
        location=_location;
        owner=msg.sender;
        
    }
    
    function setPrice(int _pricetemp)public{
        price = _pricetemp;
    }
    function setloc(string memory _loc)public{
        location = _loc;
    }
    function getprice()public view returns(int){
        return price;
    }
    function getloc()public view returns(string memory){
        return location;
    }
    
}