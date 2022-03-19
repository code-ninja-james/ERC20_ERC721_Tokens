// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MarsEnergy is ERC20, Ownable {
    uint256 public tokenPerETH = 1000 * 10**decimals();

    constructor() ERC20("MarsEnergy", "MAE") {
        _mint(msg.sender, 1000000 * 10**decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function buyToken(address _recipient) public payable {
        uint256 amountToMint = (msg.value * tokenPerETH) / 10**18;
        _mint(_recipient, amountToMint);
    }
}
