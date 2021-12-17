const BinkToken = artifacts.require("Token");

module.exports = function (deployer) {
  deployer.deploy(BinkToken);
};
