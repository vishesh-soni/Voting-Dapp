// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

struct CandidateVoteCount{
    uint count;
}

contract votecount{
    enum VotingStatus{open,closed}
    VotingStatus public Status=VotingStatus.open;

    
    mapping (uint => CandidateVoteCount) public  checkVoteCount;
     
    function vote(uint _id) public {
        if(Status==VotingStatus.open) {
            checkVoteCount[_id].count +=1;
        }
    }
    
    

    function changeVotingStatus() public 
   {
      if (Status==VotingStatus.open){
          Status=VotingStatus.closed;
      } 
      else{
          Status=VotingStatus.open;
      }
   }
}