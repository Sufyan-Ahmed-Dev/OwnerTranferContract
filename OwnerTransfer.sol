// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract TransferOwner{

    address public OwnerAddr;
    // Owner Set
    constructor() public  {
        OwnerAddr = msg.sender;
    }
    //check owner
    modifier OnlyOwner() {
      require(msg.sender == OwnerAddr , "you are not owner" );
      _;
    }
    // make new owner 
    function SetOwner (address NewOwner) public OnlyOwner {
    require (NewOwner != address(0) , "Invalid Address") ;
    OwnerAddr = NewOwner;
    }

}