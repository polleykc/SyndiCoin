pragma solidity ^0.4.0;

contract LoanSeekerContract{


    address public creator;
    uint private loanAmountNeeded;
    string companyName;
    string companyRegNumber;
    string supportingDocument;

    function LoanSeekerContract(){
        creator = msg.sender; //who is sending the message
    }

    function getLoanAmountNeeded() constant returns (uint){
        return loanAmountNeeded;
    }

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
            throw;
        }
    }

    function raiseLoadRequest(string _companyName, string _companyRegNumber, uint _loanAmountNeeded, string _supportingDocument) ifCreator{
               if(msg.sender == creator){
                    //   validateUser();
        companyName = _companyName;
        companyRegNumber = _companyRegNumber;
        loanAmountNeeded = _loanAmountNeeded;
        supportingDocument = _supportingDocument;


        }
    }

    function validateUser(){
          if(msg.sender == 0x000000000000000000000000ca35b7d915458ef540ade6068dfe2f44e8fa733c){
              throw;
          }
    }

}
