
const ERC721 = artifacts.require("./ERC721.sol");

module.exports = function(deployer) {
  const collectionName = Buffer.from("<collectionName>","utf-8");
  const collectionSymbol = Buffer.from("<collectionSymbol>","utf-8");
  deployer.deploy(ERC721,collectionName,collectionSymbol);
}
