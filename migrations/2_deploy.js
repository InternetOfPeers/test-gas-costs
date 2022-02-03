const TestGasCosts = artifacts.require("TestGasCosts");
const TestEvents = artifacts.require("TestEvents");
const PackedUint16 = artifacts.require("packedUint16");
const TestPackingUint16 = artifacts.require("TestPackingUint16");

module.exports = function (deployer) {
	deployer.deploy(TestGasCosts);
	deployer.deploy(TestEvents);
	deployer.deploy(PackedUint16);
	deployer.link(PackedUint16, TestPackingUint16);
	deployer.deploy(TestPackingUint16);
};