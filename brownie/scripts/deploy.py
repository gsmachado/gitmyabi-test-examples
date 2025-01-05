from brownie import BrownieToken, accounts

def main():
    account = accounts[0]
    initial_supply = 1000000 * 10**18  # 1 million tokens with 18 decimals
    brownie_token = BrownieToken.deploy(initial_supply, {'from': account})
    print(f"Token deployed to: {brownie_token.address}")
