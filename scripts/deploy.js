const main = async () => {
    const nftContractFactory = await hre.ethers.getContractFactory('nfts');
    const nftContract = await nftContractFactory.deploy();
    await nftContract.deployed();
    console.log("Contract deployed to:", nftContract.address);

    let txt = await nftContract.makeAnEpicNFT()
    await txt.wait()
    console.log("Minted NFT #%s", newItemId)

    txt = await nftContract.makeAnEpicNFT()
    await txt.wait()
    console.log("Minted NFT #%s", newItemId)
};

const runMain = async () => {
    try {
        await main ();
        process.exit(0);
    } catch (error) {
        console.log(error);
        process.exit(1);
    }
};

runMain();