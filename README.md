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

# Functions Of Error Handlers
* Require
>"require": is used in the setValue function to validate the input and ensure that the contract's state is updated correctly and securely.
The setValue function takes one argument _newValue of type uint256. The function includes two require statements to validate the input value. The first require statement checks if the caller of the function is the owner of the contract. If the caller is not the owner, the function will revert and the state of the contract will not be updated. The error message "The User is not the Owner" will be displayed to the user.
* Assert

>"assertFunction(uint256 _num)": This function takes one argument _num of type uint256 and returns it. It includes an assert statement to ensure that the input value is not zero. If the input value is zero, the function will throw an exception and the state of the contract will not be updated.

* Revert
>"revertFunction(uint256 _num)": This function takes one argument _num of type uint256 and returns it. It includes an if statement to check if the input value is zero. If the input value is zero, the function will revert with a custom error message and the state of the contract will not be updated.



# Authors
Keana Aliza C. Perez

Student of National Trachers College - BSIT 
