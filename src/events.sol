// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

/**
 * @title Events Contract
 * @author [Your Name]
 * @notice This contract demonstrates the use of events in Solidity.
 * @dev This contract has a single function `test()` that emits an event `TestCalled` when called.
 */
contract Events {
    /**
     * @dev Event emitted when the `test()` function is called.
     * @param sender The address that called the `test()` function.
     * @param message A string message associated with the event.
     */
    event TestCalled(address sender, string message);

    /**
     * @notice Calls the `test()` function and emits the `TestCalled` event.
     * @dev This function is public and can be called by anyone.
     */
    function test() public {
        // Emit the TestCalled event with the current sender and a message
        emit TestCalled(msg.sender, "Hello, test()!");
    }
}