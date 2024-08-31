// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

/**
 * @title Modifiers Contract
 * @author [Your Name]
 * @notice This contract demonstrates the use of modifiers in Solidity.
 * @dev Modifiers are used to modify the behavior of functions.
 */
contract Modifiers {
    /**
     * @notice The address of the contract owner.
     */
    address public owner;

    /**
     * @notice Initializes the contract and sets the owner to the deployer.
     */
    constructor() {
        // Set the owner to the deployer of the contract
        owner = msg.sender;
    }

    /**
     * @notice Modifier that checks if the caller is the owner.
     * @dev If the caller is not the owner, it reverts with an error message.
     */
    modifier onlyOwner() {
        // Check if the caller is the owner
        require(msg.sender == owner, "You are not the owner");
        // If the caller is the owner, continue with the function execution
        _;
    }

    /**
     * @notice Changes the owner of the contract.
     * @param _newOwner The new owner address.
     * @dev Only the current owner can call this function.
     */
    function changeOwner(address _newOwner) public onlyOwner {
        // Update the owner address
        owner = _newOwner;
    }
}