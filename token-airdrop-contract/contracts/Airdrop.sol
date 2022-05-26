pragma solidity 0.8.14;
import "@openzeppelin/contracts/access/Ownable.sol";
import "./Token.sol";


contract Airdrop is Ownable {

    address public tokenAddr;

    event EtherTransfer(address beneficiary, uint amount);

    constructor(address _tokenAddr) public {
        tokenAddr = _tokenAddr;
    }

    function dropTokens(address[] memory _recipients, uint256[] memory _amount) public onlyOwner returns (bool) {
       
        for (uint i = 0; i < _recipients.length; i++) {
            require(_recipients[i] != address(0));
            require(Token(tokenAddr).transfer(_recipients[i], _amount[i]));
        }

        return true;
    }

}