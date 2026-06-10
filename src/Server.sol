// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Server {
    address private admin;
    bytes private key;
    string urlImg;

    constructor(address _admin, bytes memory _key, string memory _urlImg){
        admin = _admin;
        key = _key;
        urlImg = _urlImg;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Not admin");
        _;
    }

    function changeKey(bytes memory _newKey) external onlyAdmin(){
        key = _newKey;
    }

    function changeUrl(string memory _newUrl) external onlyAdmin(){
        urlImg = _newUrl;
    }

    function viewKey() external view returns(bytes memory) {
        return key;
    }

    function viewUrl() external view returns(string memory){
        return urlImg;
    }
}
