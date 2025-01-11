// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <0.9.0;


/// @title A contract to demonstrate how to build a to-do list application
/// @notice This contract shows how to add, delete, get, update, and count tasks in a to-do list
contract Bloc {
    // Defining a structure to store a task
    struct Task {
        string task;   // Description of the task
        bool isDone;   // Status of the task: true if done, false otherwise
    }


    // Mapping to store an array of tasks for each user address
    mapping(address => Task[]) private Users;
   
    /// @notice Adds a new task to the caller's to-do list
    /// @param _task The description of the task to add
    function addTask(string calldata _task) external {
        // Push a new task to the caller's task array with the status `isDone` set to false
        Users[msg.sender].push(Task({
            task: _task,
            isDone: false
        }));
    }


    /// @notice Gets the details of a task from the caller's to-do list
    /// @param _taskIndex The index of the task to retrieve
    /// @return The task details (description and status)
    function getTask(uint _taskIndex) external view returns (Task memory) {
        // Fetch the task from the caller's task array at the specified index
        Task storage task = Users[msg.sender][_taskIndex];
        return task;
    }


    /// @notice Updates the status of a task in the caller's to-do list
    /// @param _taskIndex The index of the task to update
    /// @param _status The new status of the task (true for done, false for not done)
    function updateStatus(uint256 _taskIndex, bool _status) external {
        // Update the status of the task at the specified index in the caller's task array
        Users[msg.sender][_taskIndex].isDone = _status;
    }


    /// @notice Deletes a task from the caller's to-do list
    /// @param _taskIndex The index of the task to delete
    function deleteTask(uint256 _taskIndex) external {
        // Delete the task at the specified index in the caller's task array
        delete Users[msg.sender][_taskIndex];
    }


    /// @notice Gets the number of tasks in the caller's to-do list
    /// @return The count of tasks
    function getTaskCount() external view returns (uint256) {
        // Return the length of the caller's task array
        return Users[msg.sender].length;
    }
}


