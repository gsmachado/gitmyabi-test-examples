# Truffle ERC20 Example

This project demonstrates a basic ERC20 token implementation using Truffle.

## Setup

```bash
npm install
```

If any error occur with `node-gyp`, try:

```bash
xcode-select --install
brew install gcc
brew list gcc
```

and then:

```bash
export CXX=g++-14
export CC=gcc-14
```

and, finally:

```bash
npm install
```

## Compile

```bash
npm run compile
```

## Deploy

```bash
truffle migrate
```

## Test

```bash
npm run test
```
