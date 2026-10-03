# CodeAlpha Multi-Send Smart Contract

A Multi-Send Smart Contract developed as part of the CodeAlpha Blockchain Development Internship.

## Project Overview

This project implements a Solidity smart contract that accepts multiple Ethereum addresses and distributes Ether equally among them.

## Features

- Accepts an array of Ethereum addresses
- Receives Ether through a payable function
- Distributes Ether equally among all recipients
- Uses a loop for Ether transfers
- Checks whether each transfer is successful
- Prevents reentrant calls

## Technology Used

- Solidity
- Ethereum
- Remix IDE

## Smart Contract Function

### `multiSend(address[] recipients)`

The `multiSend` function accepts an array of recipient addresses and receives Ether with the transaction.

The Ether is divided equally among all recipients.

## Example

If 2 recipients are provided and 1 ETH is sent:

```text
Total Ether: 1 ETH
Recipients: 2

Recipient 1 → 0.5 ETH
Recipient 2 → 0.5 ETH
