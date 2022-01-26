const TestGasCosts = artifacts.require("TestGasCosts");
const TestEvents = artifacts.require("TestEvents");

module.exports = function (deployer) {
	deployer.deploy(TestGasCosts);
	deployer.deploy(TestEvents);
};