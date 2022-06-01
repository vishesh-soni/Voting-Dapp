// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 < 0.9.0;

struct candidate_info{
    uint roll_no;
    string name;
}

contract voting{
     
    enum registeration{open,closed}
    registeration public status=registeration.open;
  
    candidate_info[] public index;

    function addCandidate(uint _roll_no,string memory _name) public
    {
        if (status==registeration.open){
        candidate_info memory candidate = candidate_info({

            roll_no:_roll_no,
            name:_name
        }); 
        index.push(candidate);
        }
    }


    function changeStatus() public 
   {
      if (status==registeration.open){
          status=registeration.closed;
      } 
      else{
          status=registeration.open;
      }
   }
}