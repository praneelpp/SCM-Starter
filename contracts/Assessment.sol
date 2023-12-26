// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

//import "hardhat/console.sol";

contract Assessment {
    
    string public result;

    constructor(string memory _result) payable {
        
        result=_result;
    }

    function getResult() public view returns(string memory){
        return result;
    }

    function valid_array(uint[] memory array) public payable {
        uint length=array.length;
        if(length>0){
            result="Valid Array";
        }
        else{
            result="Invalid Array";
        }
    }

    function unique_elements(uint[] memory array) public {
        for(uint i=0;i<array.length;i++){
            for(uint j=i+1;j<array.length;j++){
                if(array[i]==array[j]){
                    result="Not Unique";
                    return;
                }
                else{
                    result="Unique";
                }
            }
        }
    }
}
