module.exports = {
  default: {
    deployment: {
      host: "localhost",
      port: 8545,
      type: "ws"
    },
    dappConnection: [
      "$WEB3",
      "ws://localhost:8546",
      "http://localhost:8545"
    ],
    gas: "auto",
    contracts: {
      MyToken: {
        args: [
          "1000000000000000000000000" // 1 million tokens
        ]
      }
    }
  }
};
