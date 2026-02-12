import { ethers } from "hardhat";
import { expect } from "chai";

describe("EncryptedCounter", function () {
  it("increments correctly", async function () {
    const Counter = await ethers.getContractFactory("EncryptedCounter");
    const counter = await Counter.deploy();
    await counter.deployed();

    expect(await counter.read()).to.equal(0);
    await counter.increment();
    expect(await counter.read()).to.equal(1);
  });
});
