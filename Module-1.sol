// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Hospital{
    struct Patient {
        uint id;
        string name;
        bool admitted;
    }
    
    mapping(uint => Patient) public patients;
    uint public patientCount;
    
    
    function admit(uint _id, string memory _name) public {
        // Working of require statement
        require(!patients[_id].admitted, "Patient is already admitted in the hospital");
        
        // Working of assert statement
        assert(bytes(_name).length > 0);
        
        patients[_id] = Patient(_id, _name, true);
        patientCount++;
    }
    
    function discharge(uint _id) public {
        // Working of require statement
        require(patients[_id].admitted, "Sorry! Patient is not admitted...");
        
        patients[_id].admitted = false;
        patientCount--;
    }
    
    function updatename(uint _id, string memory _name) public {
        // revert statement
        if (bytes(_name).length == 0) {
            revert("Patient name cannot be empty. PLease give any name....!");
        }
        
        patients[_id].name = _name;
    }
}
