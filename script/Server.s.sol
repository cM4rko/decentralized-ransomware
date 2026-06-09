// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script} from "forge-std/Script.sol";
import {Server} from "../src/Server.sol";
import {console} from "forge-std/console.sol";


contract DeployServer is Script {
    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        
        address myAddress = vm.addr(deployerPrivateKey);
        bytes memory fullPayload = vm.envBytes("RSA_PUBLIC_HEX");
        string memory urlIPFS = "";

        vm.startBroadcast(deployerPrivateKey);

        Server server = new Server(myAddress, fullPayload, urlIPFS);

        console.log("-----------------------------------------");
        console.log("CONTRACT ADDRESS:", address(server));
        console.log("OWNER ADDRESS:", myAddress);
        console.log("-----------------------------------------");

        vm.stopBroadcast();
    }
}
