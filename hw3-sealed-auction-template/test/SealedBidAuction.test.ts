import { ethers } from "hardhat";
import { expect } from "chai";

describe("SealedBidAuction", function () {
  it("submit, reveal and get highest bid", async function () {
    const Auction = await ethers.getContractFactory("SealedBidAuction");
    const auction = await Auction.deploy();
    await auction.deployed();

    const [user1, user2] = await ethers.getSigners();
    await auction.submitBid(10);
    await auction.submitBid(20);
    await auction.reveal(0);
    await auction.reveal(1);

    const [winner, amount] = await auction.highestBid();
    expect(amount).to.equal(20);
  });
});
