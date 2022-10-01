// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract BoxV2 {
    uint256 private value;

 event ValueChanged (uint256 value);
    function store (uint256 _value) public  {
        value = _value;
        emit ValueChanged (value);
    }

    function retrieve () public view returns (uint256) {
        return value;
    }

    function setZero () public {
        value = 0;
    }
}
