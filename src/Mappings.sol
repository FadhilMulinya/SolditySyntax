// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

// This contract demonstrates the use of mappings in Solidity
contract Mapping {
    // Mapping from address to uint
    // This mapping stores a uint value for each address
    mapping(address => uint) public myMap;

    // Function to get the uint value associated with a given address
    // If the address has not been set, it will return the default value of 0
    function getAddress(address _addr) public view returns (uint) {
        // Simply accessing the mapping with the address will return the associated value
        myMap[_addr];
    }

    // Function to set the uint value associated with a given address
    function setAddress(address _addr, uint _i) public {
        // Update the value at this address
        myMap[_addr] = _i;
    }

    // Function to remove the uint value associated with a given address
    function removeAddress(address _addr) public {
        // Use the delete keyword to remove the value from the mapping
        delete myMap[_addr];
    }
}

// This contract demonstrates the use of nested mappings in Solidity
contract NestedMapping {
    // Mapping from address to another mapping (uint to bool)
    // This allows us to store multiple bool values for each address, indexed by a uint
    mapping(address => mapping(uint => bool)) public myNestedMap;

    // Function to get the bool value associated with a given address and uint
    // If the address or uint has not been set, it will return the default value of false
    function get(address _addr1, uint _i) public view returns (bool) {
        // Simply accessing the nested mapping with the address and uint will return the associated value
        myNestedMap[_addr1][_i];
    }

    // Function to set the bool value associated with a given address and uint
    function set(address _addr1, uint _i, bool _boo) public {
        // Update the value at this address and uint
        myNestedMap[_addr1][_i] = _boo;
    }

    // Function to remove the bool value associated with a given address and uint
    function remove(address _addr1, uint _i) public {
        // Use the delete keyword to remove the value from the nested mapping
        delete myNestedMap[_addr1][_i];
    }
}