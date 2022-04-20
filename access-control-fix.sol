// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.13;

contract AgreedPrice {
  uint256 public price;
  address public owner;

  constructor(uint256 _price) {
    price = _price;
    owner = msg.sender;
  }

  function transferOwnership(address _addr) external ownerable() {
      owner = _addr;
  }

  function updatePrice(uint256 _price) external ownerable {
    price = _price;
  }

  modifier ownerable(){
      require(msg.sender == owner, "restricted access");
      _;
  }
}

