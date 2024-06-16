
const recipientContract = artifacts.require("./recipientContract.sol");

module.exports = function(deployer) {
  deployer.deploy(recipientContract);
}
