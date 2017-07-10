pragma solidity ^0.4.0;


contract SyndiCoinRequest{
    
    struct LoanSeeker {
        uint companyId;
        string companyName;
        address userAddress;
        bool isLoanSeeker;
    }
    
    struct Lender {
        uint lenderId;
        string lenderName;
        address lenderAddress;
    }
    
    struct LoanRequest{
         uint amountNeeded;
         uint term;
         string loanSeekerAddress;
    }
    
    LoanSeeker[] public loanSeekers;
    address public creator;
    uint private loanAmountNeeded;
    string companyName;
    string companyRegNumber;
    string supportingDocument;
    
    function SyndiCoinRequest(){
        creator = msg.sender; //who is sending the message
    }
    
      function getAllTheLoanSeekers() constant returns (string){
        
                return loanSeekers[0].companyName;

    }
    
    
    //       function getAllTheLoanSeekers() constant returns (string){
    //           string names;
    //           for(uint i=0 ; i<loanSeekers.length; i++){
    //           names=names.toSlice().concat(loanSeekers[i].companyName.toSlice());
    //           }
    //           return names;
    // }
        function getCompanyName() constant returns (string){
        return companyName;
    }
    
    
         function getCompanyregnumber() constant returns (string){
        return companyRegNumber;
    }
    
    modifier ifCreator(){
        if(msg.sender == creator){
            _;
        }
        else{
            revert();
        }
    }
    
      modifier ifLender(){
        if(msg.sender == creator){
            _;
        }
        else{
           revert();
        }
    }
    
    function raiseLoanRequest(uint _companyId, uint _loanAmountNeeded, string _supportingDocument) ifLender{
               if(msg.sender == creator){
                    //   validateUser()
        }
    }
    
    function addLoanSeeker(uint _companyId, string _companyName) ifLender{
               if(msg.sender == creator){
                    //   validateUser();
               loanSeekers.length++;
                    uint index = loanSeekers.length-1;
                    loanSeekers[index].companyName=_companyName;
                    loanSeekers[index].companyId =_companyId;
                    loanSeekers[index].userAddress =msg.sender;

        }
    }
    
    function validateUser(){
          if(msg.sender == 0x000000000000000000000000ca35b7d915458ef540ade6068dfe2f44e8fa733c){
              revert();
          }
    }
    
}