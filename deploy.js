
const hre = require("hardhat");
async function main() {
 
  const ERC20Token = await hre.ethers.getContractFactory("MarsEnergy");
  const deployedERC20Token = await ERC20Token.deploy();

  await deployedERC20Token.deployed();

  console.log("MarsEnergy deployed to:", deployedERC20Token.address);
}
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
