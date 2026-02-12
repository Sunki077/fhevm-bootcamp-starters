// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Simple Sealed-Bid Auction
contract SealedBidAuction {
    struct Bid {
        address bidder;
        euint32 amount;
        bool revealed;
    }

    Bid[] public bids;

    function submitBid(euint32 amount) public {
        bids.push(Bid(msg.sender, amount, false));
    }

    function reveal(uint256 index) public {
        bids[index].revealed = true;
    }

    function highestBid() public view returns (address winner, euint32 amount) {
        uint256 highest = 0;
        address w;
        for (uint i = 0; i < bids.length; i++) {
            if (bids[i].amount > highest && bids[i].revealed) {
                highest = bids[i].amount;
                w = bids[i].bidder;
            }
        }
        return (w, euint32(highest));
    }
}
