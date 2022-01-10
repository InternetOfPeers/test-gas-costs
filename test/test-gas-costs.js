const TestGasCosts = artifacts.require("TestGasCosts");

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract("TestGasCosts", function ( /* accounts */ ) {

  let contract;

  before("Test gas costs", async function () {
    TestGasCosts.deployed().then(function (instance) {
      contract = instance;
    });
  });

  it("check costs 1", async function () {
    await contract.test1();
    console.log("test1", (await contract.used1()).toNumber(), (await contract.used2()).toNumber(), (await contract.used3()).toNumber(), (await contract.used4()).toNumber());
  });

  it("check costs 2", async function () {
    await contract.test2();
    console.log("test2", (await contract.used1()).toNumber(), (await contract.used2()).toNumber(), (await contract.used3()).toNumber(), (await contract.used4()).toNumber());
  });

  it("check costs 3", async function () {
    await contract.test3();
    console.log("test3", (await contract.used1()).toNumber(), (await contract.used2()).toNumber(), (await contract.used3()).toNumber(), (await contract.used4()).toNumber());
  });

  it("check costs 4", async function () {
    await contract.test4();
    console.log("test4", (await contract.used1()).toNumber(), (await contract.used2()).toNumber(), (await contract.used3()).toNumber(), (await contract.used4()).toNumber());
  });

  it("check costs 5", async function () {
    await contract.test5();
    console.log("test5", (await contract.used1()).toNumber(), (await contract.used2()).toNumber(), (await contract.used3()).toNumber(), (await contract.used4()).toNumber());
  });
});