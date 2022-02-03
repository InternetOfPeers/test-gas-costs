const TestPackingUint16 = artifacts.require("TestPackingUint16");

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract("TestPackingUint16", function ( /* accounts */ ) {

  let contract;

  before("Test gas costs", async function () {
    TestPackingUint16.deployed().then(function (instance) {
      contract = instance;
    });
  });

  it("check costs 1", async function () {
    await contract.testSetPackedUint16();
    console.log("setPackedUint16", (await contract.checkpoint()).toNumber());
  });

  it("check costs 2", async function () {
    await contract.testSetUint16();
    console.log("testSetUint16", (await contract.checkpoint()).toNumber());
  });

  it("check costs 3", async function () {
    await contract.testPack();
    console.log("testPack", (await contract.checkpoint()).toNumber());
  });
  
});