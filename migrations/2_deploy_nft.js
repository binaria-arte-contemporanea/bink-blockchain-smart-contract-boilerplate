const BinkNft = artifacts.require("Nft");

module.exports = function (deployer) {
  deployer.deploy(BinkNft);
};
