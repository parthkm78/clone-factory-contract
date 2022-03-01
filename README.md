# clone-factory-contract
This repo contain example of clone factory contract

copy-paste contract in solidity.
compile contracts.

Depoymentsteps : 

1. Deploy 'CarCloneFactory' contract. This is our Factory contract.
 ![image](https://user-images.githubusercontent.com/51226907/156161804-388ebab4-936a-4b4e-ad8a-e405e3b8a8ed.png)
2. Deploy 'MetaCarClonable'contract and save address. This address will tell factory contract to make clone of this contract.
 ![image](https://user-images.githubusercontent.com/51226907/156161410-def7cc51-d44e-4c67-90c0-2591d7ef5bbf.png)
3. set 'libraryAddress' in factory contract with address of deployed contract.
 ![image](https://user-images.githubusercontent.com/51226907/156162092-2cf6278f-43a0-4f48-bb7b-a4eeca9a55cd.png)
4. call 'creatMetaCar' fucntion with input parameter. so it wil deploy new contract(here I putinput parameter as '100').
 ![image](https://user-images.githubusercontent.com/51226907/156162192-80dd7be3-dfca-4501-b718-f92c9edcbaa1.png)
5. you can check with listing all contract address whch deployed via factory contract
 ![image](https://user-images.githubusercontent.com/51226907/156162412-25e74eba-7e92-487d-8949-01d119cbab8a.png)
6. selct address and paste in 'At Address' option which you find in 'Deployment' section of Remix.
 ![image](https://user-images.githubusercontent.com/51226907/156163287-d52542f5-8085-4024-ab27-e2332fd281e5.png)
