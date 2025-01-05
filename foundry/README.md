# Simple ERC20 Token - Foundry Example

This is a basic ERC20 token implementation using Foundry.

## Setup

1. Install Foundry:
```bash
curl -L https://foundry.paradigm.xyz | bash
foundryup
```

2. Install dependencies:
```bash
forge install OpenZeppelin/openzeppelin-contracts
```

3. Build the project:
```bash
forge build
```

4. Run tests:
```bash
forge test
```

## Deployment

1. Create a `.env` file with your private key:
```bash
PRIVATE_KEY=your_private_key_here
```

2. Deploy to network:
```bash
forge script script/FoundryToken.s.sol:FoundryTokenScript --rpc-url <your_rpc_url> --broadcast
```

## Contract

The FoundryToken contract is a basic ERC20 token with:
- Name: FoundryToken
- Symbol: STK
- Initial supply: 1,000,000 tokens
