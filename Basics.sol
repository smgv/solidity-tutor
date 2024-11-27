// SPDX-License-Identifier: MIT
pragma solidity 0.8.28; // version
// pragma solidity ^0.8.28  // stating version greater than given version
// pragma solidity >=0.8.28 <0.9.0; // stating our version in between range 

contract Basics {
    // Baisc Types: 

    // boolean (bool) (default value is false)
    bool hasFavouriteNum = true;

    // Same uint / unit256 (positive number) (largest is uint256) (default value is 0)
    uint favNum = 88;
    uint256 num = 1;

   // Same int / int256 (positve/ negative numbers) (largest is int256) (default value is 0)
    int favIntNum = -88;
    int256 intNum = -1;

    // string
    string strValue = "Hello World";

    // address
    address myAddress = 0xD8ccFCD3Bd591d504Df07B0635D957f6C410eD3f;

    // bytes (largest is bytes32)
    bytes32 byteData = "cat"; // 0x2344....

    // NOTE:
    // uint and unit256 are same, int and int256 are same but bytes and bytes32 are not same
}