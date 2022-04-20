// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.13;

contract AgreedPrice {
  uint256 public price;

  constructor(uint256 _price) {
    price = _price;
  }

  function updatePrice(uint256 _price) external {
    price = _price;
  }
}

//the state variable price can be updated by using updateprice function from any body thereby making this contract useless.

