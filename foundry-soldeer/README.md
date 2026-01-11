# Simple ERC20 Token - Foundry with Soldeer Example

This is a basic ERC20 token implementation using Foundry with Soldeer for dependency management.

## What is Soldeer?

Soldeer is a package manager for Solidity that provides a more modern and efficient way to manage dependencies compared to git submodules. It offers better version control, faster installs, and cleaner dependency management.

## Prerequisites

1. **Install Foundry:**
```bash
curl -L https://foundry.paradigm.xyz | bash
foundryup
```

2. **Install Soldeer:**
```bash
cargo install soldeer
```

Alternatively, you can install Soldeer using npm:
```bash
npm install -g @soldeer-io/soldeer
```

## Setup

1. **Clone this repository and navigate to the foundry-soldeer directory:**
```bash
cd foundry-soldeer
```

2. **Install dependencies using Soldeer:**
```bash
forge soldeer install
```

This will download and install all dependencies specified in `soldeer.toml` into the `dependencies` folder.

3. **Build the project:**
```bash
forge build
```

4. **Run tests:**
```bash
forge test
```

## Dependency Management

### Adding Dependencies

To add a new dependency, use:
```bash
forge soldeer install <package-name> <version>
```

For example:
```bash
forge soldeer install @openzeppelin-contracts 5.0.0
```

### Updating Dependencies

To update dependencies:
```bash
forge soldeer update
```

### Configuration Files

- **`soldeer.toml`**: Contains dependency specifications
- **`foundry.toml`**: Foundry configuration that points to the `dependencies` folder

## Project Structure

```
foundry-soldeer/
├── foundry.toml          # Foundry configuration
├── soldeer.toml          # Soldeer dependency configuration
├── src/
│   └── FoundryToken.sol  # Main contract
├── test/
│   └── FoundryToken.t.sol # Tests
├── script/
│   └── FoundryToken.s.sol # Deployment script
└── dependencies/         # Soldeer-managed dependencies (auto-generated)
```

## Deployment

1. **Create a `.env` file with your private key:**
```bash
PRIVATE_KEY=your_private_key_here
```

2. **Deploy to network:**
```bash
forge script script/FoundryToken.s.sol:FoundryTokenScript --rpc-url <your_rpc_url> --broadcast
```

## Contract Details

The FoundryToken contract is a basic ERC20 token with:
- **Name:** FoundryToken
- **Symbol:** STK
- **Initial supply:** 1,000,000 tokens
- **Decimals:** 18 (standard ERC20)

## Advantages of Soldeer over Git Submodules

1. **Faster installations**: No need to download entire git histories
2. **Better version management**: Semantic versioning support
3. **Cleaner workspace**: Dependencies are isolated in a dedicated folder
4. **Cross-platform compatibility**: Works consistently across different operating systems
5. **Package verification**: Built-in integrity checks for downloaded packages

## Troubleshooting

### Common Issues

1. **Soldeer not found**: Make sure Soldeer is properly installed and in your PATH
2. **Build failures**: Ensure all dependencies are installed with `soldeer install`
3. **Import errors**: Check that the import paths match the dependency structure in the `dependencies` folder

### Useful Commands

- **Check Soldeer version**: `soldeer --version`
- **List installed packages**: `soldeer list`
- **Clean dependencies**: `rm -rf dependencies && soldeer install`

## Additional Resources

- [Soldeer Documentation](https://soldeer.xyz)
- [Foundry Documentation](https://book.getfoundry.sh/)
- [OpenZeppelin Contracts Documentation](https://docs.openzeppelin.com/contracts/) 