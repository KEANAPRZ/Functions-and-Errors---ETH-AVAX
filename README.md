# Functions and Errors - ETH + AVAX
First Module Assement For MetaCrafters ETH + AVAX PROOF: Intermediate EVM Course

# Description
This Solidity contract, named Functions, has three functions: a constructor, setValue, and two other functions assertFunction and revertFunction that perform similar functionality but with different error handling mechanisms.
# Getting Started
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Functions.sol). Copy and paste the following code into the file:




    // SPDX-License-Identifier: MIT
    pragma solidity >=0.6.12 <0.9.0;

    contract Functions {
    address public owner;
    uint256 public value;
    constructor(){
        owner = msg.sender;
    }

    function setValue(uint256 _newValue) external {
        require(msg.sender == owner, "The User is not the Owner");
        require(_newValue !=0, "The New Value Cannot Be Zero");
        value = _newValue;
    }

    function assertFunction(uint256 _num) external pure returns (uint256) {
        assert(_num != 0);
        return _num;
    }

    function revertFunction(uint256 _num) external pure returns (uint256){
        if (_num == 0){
            revert(" The Number Cannot Be Zero");
        }

        return _num;

    }
    }
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile Functions.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Functions" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it.


# Authors
Keana Aliza C. Perez

Student of National Trachers College - BSIT 
