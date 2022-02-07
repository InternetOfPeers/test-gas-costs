const TestLoops = artifacts.require("TestLoops");

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract("TestLoops", function ( /* accounts */ ) {

  let contract;

  before("Test gas costs", async function () {
    TestLoops.deployed().then(function (instance) {
      contract = instance;
    });
  });

  it("check costs 1", async function () {
    await contract.testPlusPlusI(1000);
    console.log("testPlusPlusI", (await contract.checkpoint()).toNumber());
  });

  it("check costs 2", async function () {
    await contract.testIPlusPlus(1000);
    console.log("testIPlusPlus", (await contract.checkpoint()).toNumber());
  });

});