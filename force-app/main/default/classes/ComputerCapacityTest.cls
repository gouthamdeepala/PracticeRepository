@isTest(seeallData = True)
public class ComputerCapacityTest {
    Static testmethod Void TestFunction1(){
        Computer__c VarTempValue = New Computer__c();
        VarTempValue.RAM_in_GB__c = 0.50;
        VarTempValue.Hard_Disk_in_GB__c = 49;
        VarTempValue.Processor_in_GHz__c = 1;
        //Inserting the Values 
        Insert VarTempValue;
        //Creating new sobject to retrieve the data 
        Computer__c VarTempValueAfterInsert = New Computer__c();
         VarTempValueAfterInsert = [Select Capacity__c FROM Computer__c WHERE id =: VarTempValue.Id];
        System.assertEquals('Low Capacity', VarTempValueAfterInsert.Capacity__c);
       }//Test Function1 Ends  
Static testmethod Void TestFunction2(){
        Computer__c VarTempValue = New Computer__c();
        VarTempValue.RAM_in_GB__c = 0.25;
        VarTempValue.Hard_Disk_in_GB__c = 48;
        VarTempValue.Processor_in_GHz__c = 1;
        //Inserting the Values 
        Insert VarTempValue;
    //Updating the value
    VarTempValue.Hard_Disk_in_GB__c = 30;
    Update VarTempValue; 
        //Creating new sobject to retrieve the data 
        Computer__c VarTempValueAfterInsert = New Computer__c();
         VarTempValueAfterInsert = [Select Capacity__c FROM Computer__c WHERE id =: VarTempValue.Id];
        System.assertEquals('Low Capacity', VarTempValueAfterInsert.Capacity__c);
       }//Test Function2 Ends  

}