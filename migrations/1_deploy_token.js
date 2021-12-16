const Bink = artifacts.require("BinkToken");

module.exports = function (deployer) {
  deployer.deploy(Bink);
};
