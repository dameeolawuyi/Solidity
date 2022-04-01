//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

//contract statement
//struct
//array
//constructor
//events
//modifiers

contract CrowdFunding {
     struct FundingProject{
         string  name;
         string  projectdescription;
         address  owner;
         uint  minimumfunds;
         uint maximumfunds;
         uint amountraised;

     }

     struct Funder{
         string name;
         uint amount;
         address funder;

     }
     //array of funders cause we need all the funders we can get
     Funder[] public funders;
     FundingProject public fundingproject;


     function crowdFunding(
         string memory _name,
         string  memory _projectdescription,
         uint   _amountraised,
         address _owner,
         uint _minimumfunds,
         uint _maximumfunds
        )  
         public {
         uint minimumfunds  = _minimumfunds * 1 ether ;
         uint amountraised = 0;
         uint maximumamount;

         fundingproject = FundingProject ( _name, _projectdescription,  amountraised, owner, _minimumfunds, _maximumfunds);
        }      

}
