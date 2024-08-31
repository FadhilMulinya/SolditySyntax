// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

/**
 * Contract name: ViewAndPure
 *
 * This contract contains two functions that demonstrate the use of `view` and `pure` functions in Solidity.
 * A `view` function is one that does not modify the state of the contract, while a `pure` function does not
 * read or write to the state.
 */
contract ViewAndPure{
    /**
     * Public state variable `y` with an initial value of 12.
     */
    int public y = 12;

    /**
     * View function `addValues` takes an integer `z` as an argument and returns the sum of `z` and `y`.
     * This function is a `view` function, meaning it does not modify the state of the contract.
     *
     * @param z The integer to be added to `y`.
     * @return The sum of `z` and `y`.
     */
    function addValues(int z)public view returns(int){
        // The `view` keyword indicates that this function does not modify the state of the contract.
        // The function simply returns the sum of `z` and `y`.
        return z + y;
    }

    /**
     * Pure function `addition` takes two integers `z` and `x` as arguments and returns their sum.
     * This function is a `pure` function, meaning it does not read or write to the state of the contract.
     *
     * @param z The first integer to be added.
     * @param x The second integer to be added.
     * @return The sum of `z` and `x`.
     */
    function addition(int z, int x)public pure returns(int){
        // The `pure` keyword indicates that this function does not read or write to the state of the contract.
        // The function simply returns the sum of `z` and `x`.
        return z + x;
    }
}