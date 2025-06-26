// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import "../src/FoundryToken.sol";

contract FoundryTokenTest is Test {
    FoundryToken public token;
    address public owner;
    address public user;

    function setUp() public {
        owner = address(this);
        user = address(0x1);
        token = new FoundryToken(1000000);
    }

    function testInitialSupply() public {
        assertEq(token.totalSupply(), 1000000 * (10 ** token.decimals()));
        assertEq(token.balanceOf(owner), 1000000 * (10 ** token.decimals()));
    }

    function testTransfer() public {
        uint256 amount = 1000 * (10 ** token.decimals());
        token.transfer(user, amount);
        assertEq(token.balanceOf(user), amount);
    }
} 