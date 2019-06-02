var MarksMgmt = artifacts.require("./MarksMgmt.sol");

module.exports = function(deployer) {
  deployer.deploy(MarksMgmt);
};
