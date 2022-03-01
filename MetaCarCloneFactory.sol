// SPDX-License-Identifier: MIT
pragma solidity 0.6.11;

//import "@openzeppelin/contracts/access/Ownable.sol";
import "./CloneFactory.sol";
import "./MetaCarClonable.sol";

//contract CarCloneFactory is CloneFactory, Ownable {
contract CarCloneFactory is CloneFactory {
    MetaCarClonable[] public metaCarAddresses;
    event MetaCarCreated(MetaCarClonable metaCar);

    address public libraryAddress;
    address private metaCarOwner;

    constructor(address _metaCarOwner) public {
        metaCarOwner = _metaCarOwner;
    }

    function setLibraryAddress(address _libraryAddress) external  {
        libraryAddress = _libraryAddress;
    }

    function createMetaCar(uint256 number) external {
        MetaCarClonable metaCar = MetaCarClonable(
            createClone(libraryAddress)
        );
       // metaCar.initialize(metaCarOwner, number);
         metaCar.initialize(number);

        metaCarAddresses.push(metaCar);
        emit MetaCarCreated(metaCar);
    }

    function getMetaCars() external view returns (MetaCarClonable[] memory) {
        return metaCarAddresses;
    }
}
