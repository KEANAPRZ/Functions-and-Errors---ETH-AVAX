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
