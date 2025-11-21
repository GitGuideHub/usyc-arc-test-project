// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./IERC20.sol";

contract USYCTest {
    // USYC token contract on ARC Testnet
    IERC20 public constant USYC = IERC20(0xA56319876843A9da8eFb2532897B3d2D62FEcEc5);

    // Send USYC to another address
    function sendUSYC(address to, uint256 amount) external {
        USYC.transfer(to, amount);
    }

    // Approve spending of your USYC
    function approveUSYC(address spender, uint256 amount) external {
        USYC.approve(spender, amount);
    }

    // Move USYC from one address to another (requires allowance)
    function moveUSYC(address from, address to, uint256 amount) external {
        USYC.transferFrom(from, to, amount);
    }
}
