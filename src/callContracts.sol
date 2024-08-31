// SPDX-License-Identifier: MIT
// This line specifies the license under which the contract is released.
// In this case, it's the MIT License, which is a permissive free software license.

pragma solidity ^0.8.10;
// This line specifies the version of the Solidity compiler to use.
// The caret symbol (^) indicates that the compiler should use the specified version or any newer version that is compatible.

interface MinimalERC20 {
    // This interface defines a minimal representation of an ERC20 token contract.
    // It only includes the functions we are interested in, which in this case is just the balanceOf function.

    /**
     * Returns the balance of tokens held by a specific address.
     * 
     * @param account The address to query the balance for.
     * @return The balance of tokens held by the specified address.
     */
    function balanceOf(address account) external view returns (uint256);
    // This function is marked as "view" because it does not modify the state of the contract.
    // It is marked as "external" because it can be called from outside the contract.
}

contract MyContract {
    // This contract interacts with an external ERC20 token contract.

    MinimalERC20 public externalContract;
    // This variable holds an instance of the MinimalERC20 interface, which represents the external ERC20 token contract.
    // It is marked as "public" so that it can be accessed from outside the contract.

    /**
     * Initializes a new instance of the MyContract contract.
     * 
     * @param _externalContract The address of the external ERC20 token contract.
     */
    constructor(address _externalContract) {
        // This is the constructor function, which is called when the contract is deployed.
        // It initializes the externalContract variable with the address of the external ERC20 token contract.

        externalContract = MinimalERC20(_externalContract);
        // This line creates an instance of the MinimalERC20 interface, pointing to the address of the external ERC20 token contract.
    }

    /**
     * Requires that the caller of this transaction has a non-zero balance of tokens in the external ERC20 contract.
     */
    function mustHaveSomeBalance() public {
        // This function checks if the caller of this transaction has a non-zero balance of tokens in the external ERC20 contract.

        uint256 balance = externalContract.balanceOf(msg.sender);
        // This line calls the balanceOf function on the external ERC20 contract, passing the address of the current message sender (i.e., the caller of this transaction).
        // It stores the result in the "balance" variable.

        require(balance > 0, "You don't own any tokens of external contract");
        // This line checks if the balance is greater than 0.
        // If it's not, it throws an exception with the specified error message.
        // If it is, the function continues executing.
    }
}