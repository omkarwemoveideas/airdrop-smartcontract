#### Files and usage
##### contracts/Airdrop.sol
This is our main Contract file which you need to deploy.

##### migrations/1_initial_migration.js
Our Smart contract takes 1 constructor parameter, You need to pass Token Contract Address which you want to Airdrop. That you can specify in this file.

##### src/airdrop.csv
List of Addresses you want to airdrop tokens to. (Sample file included, you can also download list from bscscan,etherscan)

##### src/airdrop.js
This is a node script to interect with deployed airdrop smart contract. it reads list of airdrop beneficiaries and airdrops token in batch size you have specified. in ```init3``` function you need to specify deployed smart contract address.

##### .env
File which contains 12 secret mnemonic phrases of your hd wallet in SEED_PHRASE variable.

#### Commands to deploy and airdrop

##### Deploy smart contact
 - ```npm install```
 - Compiling smart contract ```truffle compile```
 - Deploying smart contract - ```truffle migrate --network=testnet``` Choose network from ```truffle-config.js``` file.

##### Allowance
 - Set Allowance in your Token Contract, so Airdrop contract can transfer tokens.

##### Token Airdrop
 - Run ```node airdrop.js```
 