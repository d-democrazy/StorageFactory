// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {

    uint256 myFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople; // [dynamic array]

    mapping(string => uint256) public nameToFavoriteNumber; // Mapping

    function store(uint256 _favoriteNumber) public virtual { // Modify or update "myFavoriteNumber" variable
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public { // Modify or update array
        listOfPeople.push(Person(_favoriteNumber, _name)); // Adding "Person" variable to array
        nameToFavoriteNumber[_name] = _favoriteNumber; // Finding data from mapping
    }
}