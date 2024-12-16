// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract SimpleStorage {
    uint256 myFavoriteNumber;
    uint256[] listOfFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // dynamic array
    Person[] public listOfPeople;

    // static array [3]
    //  Person[3] public listOfPeople;

    // mapping name to string
    mapping(string => uint256) public nameToFavNumber;

    mapping(uint256 => string) public  numToName;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    // View function can read from the blockchain but cannot modify the state of the contract
    function reterive() public view returns(uint256) {
        return myFavoriteNumber;
    }

    // Pure function cannot read from the blockchain or modify the state of the contract
    // will always return the expected result
    function getValue(uint256 a, uint256 b) public pure returns(uint256) {
        return a + b;
    }

    // storage, memory and calldata
    // variable declared in global scope is storage all variables declared are storage
    // memory is used for string as string is treated as array of bytes and has write and read access
    // calldata cannot be modified has only read access
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavNumber[_name] = _favoriteNumber;
        numToName[_favoriteNumber] = _name;
    }
}