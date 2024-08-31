// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

/**
 * @title ReceiveEther
 * @dev This contract is designed to receive Ether and handle different scenarios based on the `msg.data` property.
 */
contract ReceiveEther {
    /**
     * Flowchart explanation:
     * 
     *           send Ether
     *               |
     *         msg.data is empty?
     *              / \
     *            yes  no
     *            /     \
     * receive() exists?  fallback()
     *         /   \
     *        yes   no
     *        /      \
     *    receive()   fallback()
     */

    /**
     * @dev Function to receive Ether. msg.data must be empty.
     * @notice This function is called when Ether is sent to the contract and msg.data is empty.
     */
    receive() external payable {}

    /**
     * @dev Fallback function is called when msg.data is not empty.
     * @notice This function is called when Ether is sent to the contract and msg.data is not empty.
     */
    fallback() external payable {}

    /**
     * @dev Returns the current balance of the contract.
     * @return The current balance of the contract.
     */
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}