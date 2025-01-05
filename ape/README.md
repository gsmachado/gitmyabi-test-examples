# Ape Token Project

A simple ERC20 token implementation using the Ape Framework.

## Installation

1. Install Python 3.8 or later if not already installed

2. Install pipx if not already installed:
```bash
python -m pip install --user pipx
python -m pipx ensurepath
```

3. Install Ape using pipx:
```bash
pipx install eth-ape
```

4. Create and activate a virtual environment:
```bash
python -m venv venv
source venv/bin/activate  # On Windows use: venv\Scripts\activate
```

5. Install project dependencies:
```bash
ape plugins install vyper
ape plugins install solidity
```

## Using docker

```bash
docker pull ghcr.io/apeworx/ape:latest  # installs with recommended-plugins
```

and then:

```bash
docker run \
  --volume $HOME/.ape:/home/harambe/.ape \
  --volume $HOME/.vvm:/home/harambe/.vvm \
  --volume $HOME/.solcx:/home/harambe/.solcx \
  --volume $PWD:/home/harambe/project \
  apeworx/ape compile
```