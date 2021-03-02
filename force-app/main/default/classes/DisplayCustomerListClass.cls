public with sharing class DisplayCustomerListClass{
    @AuraEnabled
    public static list<HDFC_Customer_Details__c> customerInfo(){
      list<HDFC_Customer_Details__c> Acclist = New list<HDFC_Customer_Details__c>();
      Acclist = [Select Name,Last_Name__c,Email__c From HDFC_Customer_Details__c LIMIT 100];
        return Acclist;
       
    }
}