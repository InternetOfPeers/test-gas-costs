const TestGasCosts = artifacts.require("TestGasCosts");

module.exports = function (deployer) {
	deployer.deploy(TestGasCosts);
};