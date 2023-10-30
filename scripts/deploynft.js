async function main(){
    const mnft = await ethers.getContractFactory("mnft")
    //  Start deployment, returning a promise that resolves to a contract object
    const Mnft = await mnft.deploy()
    console.log("contract deploy at address", Mnft.target)
}
main()
.then(() => process.exit(0))
.catch((error) => {
  console.error(error);
  process.exit(1);
}); 
