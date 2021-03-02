public with sharing class  HDFCCustomerDetails {
    @AuraEnabled
    Public Static void createrecord(HDFC_Customer_Details__c Createrecord){
        try{
            System.debug('The Updated Record is'+Createrecord);
            if(Createrecord!=Null){
        insert Createrecord;            
        }  
        }Catch(Exception ex)
        { 
        }
      
       
    }
}