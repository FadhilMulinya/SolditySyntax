// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

/*
 * This code demonstrates a graph of inheritance in Solidity, showcasing
 * how contracts can build upon each other's functionality.
 *
 * The graph of inheritance is as follows:
 * 
 *    A
 *  /  \
 * B    C
 * |\  /|
 * | \/ |
 * | /\ | 
 * D    E
 *
 */

// Contract A: The Base Contract
contract A {
    // Declare a virtual function foo() which can be overridden by children
    // The virtual keyword allows this function to be overridden by child contracts
    function foo() public pure virtual returns (string memory) {
        // This function returns the string "A"
        return "A";
    }
}

// Contract B: Inheriting from A
contract B is A {
    // Override A.foo();
    // The override keyword specifies that this function is intended to override
    // a parent contract's function
    // The virtual keyword allows this function to be overridden by further children
    function foo() public pure virtual override returns (string memory) {
        // This function returns the string "B"
        return "B";
    }
}

// Contract C: Inheriting from A
contract C is A {
    // Similar to contract B above
    // Override A.foo();
    function foo() public pure virtual override returns (string memory) {
        // This function returns the string "C"
        return "C";
    }
}

// Contract D: Multiple Inheritance
contract D is B, C {
    // When inheriting from multiple contracts, if a function is defined multiple times,
    // the right-most parent contract's function is used
    // In this case, C is the right-most parent with function foo()
    function foo() public pure override (B, C) returns (string memory) {
        // The super keyword is used to call functions in the parent contract
        // In this case, it calls the foo() function in the right-most parent contract (C)
        return super.foo();
    }
}

// Contract E: Multiple Inheritance (Alternative Order)
contract E is C, B {
    // Similar to contract D above, but with the order of inheritance reversed
    function foo() public pure override (C, B) returns (string memory) {
        // The super keyword is used to call functions in the parent contract
        // In this case, it calls the foo() function in the right-most parent contract (B)
        return super.foo();
    }
}