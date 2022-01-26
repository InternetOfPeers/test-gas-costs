const TestEvents = artifacts.require("TestEvents");

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract("TestEvents", function ( /* accounts */ ) {

  let contract;

  before("Test gas costs", async function () {
    TestEvents.deployed().then(function (instance) {
      contract = instance;
    });
  });

  it("check costs 1", async function () {
    await contract.testReturnData();
    console.log("testReturnData", (await contract.checkpoint()).toNumber());
  });

  it("check costs 2", async function () {
    await contract.testReturnAndUseData();
    console.log("testReturnAndUseData", (await contract.checkpoint()).toNumber());
  });

  it("check costs 3", async function () {
    await contract.testEmitData();
    console.log("testEmitData", (await contract.checkpoint()).toNumber());
  });

});