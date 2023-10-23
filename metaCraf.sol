// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract MyToken {


    // public variables here
    string public TokenName ="Zaga";
    string public TokenAbbr = "ZAG";
    uint public  TotallSupply = 0;

    // mapping variable here

   mapping  (address=>uint)public balance; 
    // mint function
    function mint(address _address,uint _value) public {
    TotallSupply += _value;
    balance[_address] += _value;
 }
    // burn function
    function burn(address _address,uint _value) public {
        if(balance[_address] >= _value){
    TotallSupply -= _value;
    balance[_address]-=_value;
        }
}
}
