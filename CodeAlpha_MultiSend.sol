// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MultiSend {
    bool private locked;

    modifier nonReentrant() {
        require(!locked, "Reentrant call");
        locked = true;
        _;
        locked = false;
    }

    function multiSend(address[] calldata recipients)
        external
        payable
        nonReentrant
    {
        require(recipients.length > 0, "No recipients");
        require(msg.value > 0, "No Ether sent");
        require(
            msg.value % recipients.length == 0,
            "Ether must divide equally"
        );

        uint256 amountPerRecipient = msg.value / recipients.length;

        for (uint256 i = 0; i < recipients.length; i++) {
            (bool success, ) = payable(recipients[i]).call{
                value: amountPerRecipient
            }("");

            require(success, "Transfer failed");
        }
    }
}