// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "ds-test/test.sol";
import "../SimpleToken.sol";

contract SimpleTokenTest is DSTest {
    SimpleToken token;
    address user;

    function setUp() public {
        token = new SimpleToken(1000000);
        user = address(0x1);
    }

    function testInitialSupply() public {
        assertEq(token.totalSupply(), 1000000 * (10 ** token.decimals()));
        assertEq(token.balanceOf(address(this)), 1000000 * (10 ** token.decimals()));
    }

    function testTransfer() public {
        uint256 amount = 1000 * (10 ** token.decimals());
        token.transfer(user, amount);
        assertEq(token.balanceOf(user), amount);
    }
}
