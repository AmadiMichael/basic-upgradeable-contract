const { ethers, upgrades } = require("hardhat");

async function main() {
  const BoxV2 = await ethers.getContractFactory("BoxV2");
  console.log("Upgrading Box...");
  await upgrades.upgradeProxy(
    "0xD8Fe9a17bc24a80A415706e76CcE89256243c522",
    BoxV2
  );
  console.log("Box Upgraded.");
}

main();
