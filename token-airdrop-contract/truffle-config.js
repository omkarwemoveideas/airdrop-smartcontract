const HDWalletProvider = require('@truffle/hdwallet-provider');
const fs = require('fs');
const mnemonic = fs.readFileSync(".secret").toString().trim();

module.exports = {
  networks: {
   development: {
    host: "127.0.0.1",
    port: 8545,
    network_id: "*"
   },
   rinkeby: {
       provider: function() { 
        return new HDWalletProvider(mnemonic, "https://rinkeby.infura.io/v3/0e24075c85dd47be95eea102c68fd582");
       },
       network_id: 4,
       gas: 4500000,
       gasPrice: 10000000000,
   }
  }
 };