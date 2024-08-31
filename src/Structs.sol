// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract TodoList {
    // Define a struct to represent a Todo Item
    struct TodoItem {
        string text; // The text of the Todo Item
        bool completed; // Whether the Todo Item is completed
    }

    // Create an array of Todo Items
    TodoItem[] public todos; // Renamed from 'todo' to 'todos' to match the plural form

    /**
     * Create a new Todo Item
     * @param _text The text of the Todo Item
     */
    function createTodo(string memory _text) public {
        // Multiple ways to initialize a struct
        // Method 1: Initialize with constructor
        // todos.push(TodoItem(_text, false)); // Commented out to avoid duplicate push

        // Method 2: Initialize with explicit key-value pairs
        todos.push(TodoItem({text: _text, completed: false}));

        // Method 3: Initialize an empty struct and set individual properties
        // TodoItem memory todo; // Commented out to avoid duplicate push
        // todo.text = _text;
        // todo.completed = false;
        // todos.push(todo); // Commented out to avoid duplicate push
    }

    /**
     * Update the text of a Todo Item
     * @param _index The index of the Todo Item to update
     * @param _text The new text of the Todo Item
     */
    function update(uint _index, string memory _text) public {
        // Update the text of the Todo Item at the specified index
        todos[_index].text = _text;
    }

    /**
     * Toggle the completion status of a Todo Item
     * @param _index The index of the Todo Item to toggle
     */
    function toggleCompleted(uint _index) public {
        // Toggle the completion status of the Todo Item at the specified index
        todos[_index].completed = !todos[_index].completed;
    }
}