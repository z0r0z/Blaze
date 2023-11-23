// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.19;

/// @dev Blast L2 helper contract.
/// @author Blaze (https://github.com/z0r0z/Blaze)
abstract contract Blast {
    /// @dev Precompile address for Yield management.
    Blast constant blast = Blast(0x4300000000000000000000000000000000000000);

    /// @dev Yield settings.
    enum Yield {
        AUTOMATIC,
        CLAIMABLE
    }

    /// @dev Install settings for Yield. If AUTOMATIC, the `beneficiary`'s EVM balance will increase
    /// automatically. If CLAIMABLE, `claimYield` must be called by `beneficiary` for `recipient`.
    /// This allows more complex actions, such as fee splitting, to be included in each contract.
    /// Note: If `address(0)` is set for `beneficiary` the contract is the default `beneficiary`.
    function configureContract(Yield setting, address payable beneficiary) public payable virtual {}

    /// @dev Allows a Yield `beneficiary` to forward claim to `recipient`.
    function claimYield(address payable recipient) public payable virtual {}
}
