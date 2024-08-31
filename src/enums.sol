// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

// This is a contract named "Enum"
contract Enum {
    // This is an enumeration type named "Status" that represents different shipping states
    enum Status {
        Pending, // 0
        Shipped, // 1
        Accepted, // 2
        Rejected, // 3
        Canceled // 4
    }

    // We declare a variable named "status" of type "Status"
    // This variable can only hold one of the predefined values of the "Status" enum
    Status public status;

    // Note: Enums are internally represented as uint, so Pending is 0, Shipped is 1, and so on

    // This is a function named "get" that returns the current value of "status"
    function get() public view returns (Status) {
        // This function simply returns the value of "status"
        // Note: The "view" keyword means that this function does not modify the state of the contract
        status;
    }

    // This is a function named "set" that sets the value of "status" to a new value
    function set(Status _status) public {
        // This function takes a "Status" enum value as an argument and sets "status" to that value
        status = _status;
    }

    // This is a function named "cancel" that sets the value of "status" to "Canceled"
    function cancel() public {
        // This function sets "status" to "Canceled" (which is equivalent to setting it to 4)
        status = Status.Canceled;
    }
}