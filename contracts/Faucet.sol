// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Faucet {

    address[] public funders;

    receive() external payable {}

    function addFunds() external payable {
        funders.push(msg.sender);
    }

    function withdraw(uint withdrawAmount) external {
        if (withdrawAmount < 1000000000000000000) {
            payable(msg.sender).transfer(withdrawAmount);
        }
    }

    function getAllFunders() public view returns (address[] memory) {
        return funders;
    }

    function getFunderAtIndex(uint index) external view returns (address) {
        address[] memory _funders = getAllFunders();
        return _funders[index];
    }
}