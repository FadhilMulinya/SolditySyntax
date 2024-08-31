// SPDX-License-Identifier: MIT
// This line specifies the license under which the contract is released.

pragma solidity ^0.8.2;
// This line specifies the version of the Solidity compiler that should be used to compile the contract.

/**
 * @title SendEther
 * @author [Your Name]
 * @notice This contract allows users to send Ether to a specified address.
 */
contract SendEther {
    /**
     * @notice This function sends Ether to a specified address using the `send` function.
     * @param _to The address that will receive the Ether.
     */
    function sendEth(address payable _to) public payable {
        // The function is marked as public, meaning it can be called from outside the contract.
        // The function is also marked as payable, meaning it can receive Ether.

        uint amountToSend = msg.value;
        // This line sets a variable called amountToSend to the value of msg.value, 
        // which is the amount of Ether sent with the transaction that called this function.

        bool sent = _to.send(amountToSend);
        // This line attempts to send the amountToSend to the address _to using the send function.
        // The send function returns a boolean value indicating whether the transfer was successful.

        require(sent == true, "Failed to send ETH");
        // This line checks that the sent variable is true, indicating that the transfer was successful.
        // If the transfer was not successful, the require statement will revert the transaction and throw an error with the message "Failed to send ETH".
    }
}

/**
 * @title SendEther_2
 * @author [Your Name]
 * @notice This contract allows users to send Ether to a specified address using the `call` function.
 */
contract SendEther_2 {
    /**
     * @notice This function sends Ether to a specified address using the `call` function.
     * @param _to The address that will receive the Ether.
     */
    function sendEth(address payable _to) public payable {
        // Just forward the ETH received in this payable function
        // to the given address
        uint amountToSend = msg.value;
        // call returns a bool value specifying success or failure
        (bool success, bytes memory data) = _to.call{value: msg.value}("");
        // This line attempts to send the amountToSend to the address _to using the call function.
        // The call function returns a boolean value indicating whether the transfer was successful, 
        // and a bytes array containing the return data (if any).

        require(success == true, "Failed to send ETH");
        // This line checks that the success variable is true, indicating that the transfer was successful.
        // If the transfer was not successful, the require statement will revert the transaction and throw an error with the message "Failed to send ETH".
    }
}

/**
 * @title SendEther_3
 * @author [Your Name]
 * @notice This contract allows users to send Ether to a specified address using the `transfer` function.
 */
contract SendEther_3 {
    /**
     * @notice This function sends Ether to a specified address using the `transfer` function.
     * @param _to The address that will receive the Ether.
     */
    function sendEth(address payable _to) public payable {
        // Just forward the ETH received in this payable function
        // to the given address
        uint amountToSend = msg.value;
        
        // Use the transfer method to send the ETH.
        _to.transfer(msg.value);
        // This line attempts to send the amountToSend to the address _to using the transfer function.
        // The transfer function returns nothing, but will throw an exception if the transfer fails.
    }
}

/**
 * .send() and .call() return a boolean value
 *  indicating success and are low-level functions. 
 * .transfer() is a high-level function that throws an error if it fails.
 * 
 */