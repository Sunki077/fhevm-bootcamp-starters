import { ethers } from "hardhat";
import { expect } from "chai";

describe("MyConfidentialApp", function () {
  it("set and get encrypted data", async function () {
    const App = await ethers.getContractFactory("MyConfidentialApp");
    const app = await App.deploy();
    await app.deployed();

    const [user] = await ethers.getSigners();
    await app.setData(42);
    expect(await app.getData(user.address)).to.equal(42);
  });
});
