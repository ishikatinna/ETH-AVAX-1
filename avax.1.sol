// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract CU{
    address public owner;
    uint256 public StudentID = 5;

    event StudentIDUpdated(uint256 newStudentID);
    constructor() {
        owner = msg.sender;
    }

    function UpdatestudentID(uint256 newstudentID) external {
        require(newstudentID > 1, "Student ID must be greater than 1"); 
        assert(msg.sender == owner);//sender of the transaction should be the owner otherwise transaction fails

        if (newstudentID > 1000) {
            revert("StudentID cannot exceed 1000");
        }

        StudentID = newstudentID;
        emit StudentIDUpdated(newstudentID);//emit the event which we created
    }
}
