# Simple ERC20 Token - DappTools Example

This is a basic ERC20 token implementation using DappTools.

## Installation

To install DappTools:

1. First install Nix:
```bash
# macOS and Linux
curl -L https://nixos.org/nix/install | sh

# Additional step for macOS 10.15 and later
echo 'if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then . ~/.nix-profile/etc/profile.d/nix.sh; fi' >> ~/.zshrc
```

2. Enable Nix command and flakes:
```bash
mkdir -p ~/.config/nix
echo "experimental-features = nix-command flakes" >> ~/.config/nix/nix.conf
```

3. Install DappTools:
```bash
curl https://dapp.tools/install | sh
```

4. After installation, restart your terminal or run:
```bash
source ~/.bashrc  # for bash users
# OR
source ~/.zshrc   # for zsh users
```

## Setup

1. Install dependencies:
```bash
dapp install OpenZeppelin/openzeppelin-contracts
dapp install dapphub/ds-test
```

2. Build the project:
```bash
make
```

3. Run tests:
```bash
make test
```

## Deployment

1. Set up your ETH_FROM environment variable:
```bash
export ETH_FROM=your_address
```

2. Deploy to network:
```bash
make deploy
```

## Contract

The SimpleToken contract is a basic ERC20 token with:
- Name: SimpleToken
- Symbol: STK
- Initial supply: 1,000,000 tokens
