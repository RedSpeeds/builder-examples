// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

/* Autogenerated file. Do not edit manually. */

import { ItemPriceInTokenData } from "../tables/ItemPriceInToken.sol";
import { ItemQuantityMultipleForTokenData } from "../tables/ItemQuantityMultipleForToken.sol";
import { ItemTradeERC20Data } from "../tables/ItemTradeERC20.sol";

/**
 * @title IItemTradeSystem
 * @author MUD (https://mud.dev) by Lattice (https://lattice.xyz)
 * @dev This interface is automatically generated from the corresponding system contract. Do not edit manually.
 */
interface IItemTradeSystem {
  function test__registerERC20Token(uint256 smartObjectId, address tokenAddress, address receiver) external;

  function test__updateERC20Receiver(uint256 smartObjectId, address receiver) external;

  function test__setItemPrice(uint256 smartObjectId, uint256 itemId, uint256 priceInWei) external;

  function test__setEnforcedItemMultiple(
    uint256 smartObjectId,
    uint256 itemId,
    uint256 enforcedItemMultiple,
    uint256 tokenAmount
  ) external;

  function test__purchaseItems(uint256 smartObjectId, uint256 itemId, uint256 quantity) external;

  function test__sellItems(uint256 smartObjectId, uint256 itemId, uint256 quantity) external;

  function test__collectTokens(uint256 smartObjectId) external;

  function test__getItemTradeContractAddress() external view returns (address);

  function test__getItemBuyPriceData(
    uint256 smartObjectId,
    uint256 inventoryItemId
  ) external returns (ItemPriceInTokenData memory);

  function test__getItemSellPriceData(
    uint256 smartObjectId,
    uint256 inventoryItemId
  ) external returns (ItemQuantityMultipleForTokenData memory);

  function test__getPlayerEphemeralItemBalance(
    uint256 smartObjectId,
    uint256 inventoryItemId,
    address player
  ) external view returns (uint256);

  function test__getERC20Data(uint256 smartObjectId) external returns (ItemTradeERC20Data memory);
}
