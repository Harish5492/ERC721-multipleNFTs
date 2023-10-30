/**
 * @type import('hardhat/config').HardhatUserConfig
 */
require("dotenv").config();
require("@nomicfoundation/hardhat-toolbox");
require("@nomicfoundation/hardhat-verify");
const { API_URL, PRIVATE_KEY } = process.env;

module.exports = {
  solidity: "0.8.20",
  defaultNetwork: "sepolia", 
  networks: {
    hardhat: {},
    sepolia: {
      url:API_URL,
      accounts: [`0x${PRIVATE_KEY}`],
    },
  },
  etherscan :{
    apiKey :"BUSV5C9CWXC63DC2XV2FZB3N8EE5Z5QFW4"
  }
};
