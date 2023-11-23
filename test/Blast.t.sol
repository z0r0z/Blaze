// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.19;

import {MockAutoYield} from "./utils/mocks/MockAutoYield.sol";

import {Blast} from "../src/Blast.sol";
import {Test} from "@forge/Test.sol";

contract BlastTest is Test {
    MockAutoYield immutable mock = new MockAutoYield();

    function setUp() public {}

    function testDeploy() public {
        new MockAutoYield();
    }
}
