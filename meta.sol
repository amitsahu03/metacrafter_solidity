// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    string public tk_name = "Amit";
    string public tk_symbol = "Sahu";
    uint public tk_amount = 0;

    // mapping variable
    mapping(address => uint) public balance;

    // mint function
    function mint(address _addr, uint _val) public {
        tk_amount += _val;
        balance[_addr] += _val;
    }

    // burn function
    function burn(address _addr, uint _val) public {
        if(balance[_addr] >= _val) {
            tk_amount -= _val;
            balance[_addr] -= _val;
        } 
    }
}
