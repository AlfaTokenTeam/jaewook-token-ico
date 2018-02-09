pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract JaewookToken is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function JaewookToken(address _owner)  UpgradeableToken(_owner) {
    name = "JaewookToken";
    symbol = "JWT";
    totalSupply = 10000000000000000000000000000000;
    decimals = 20;

    balances[_owner] = totalSupply;
  }
}