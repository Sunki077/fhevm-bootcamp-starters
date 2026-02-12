import { ethers } from "hardhat";
import { expect } from "chai";

describe("ConfidentialVault", function () {
  it("deposit and withdraw correctly", async function () {
    const Vault = await ethers.getContractFactory("ConfidentialVault");
    const vault = await Vault.deploy();
    await vault.deployed();

    const [owner] = await ethers.getSigners();
    await vault.deposit(10);
    expect(await vault.balanceOf(owner.address)).to.equal(10);
    await vault.withdraw(5);
    expect(await vault.balanceOf(owner.address)).to.equal(5);
  });
});
