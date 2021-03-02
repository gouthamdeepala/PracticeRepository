@isTest
public class ElectronicsDeviceTest {
    Static Testmethod Void Discount(){
    list<ElectronicsDevice__c> Bulklist = New list<ElectronicsDevice__c>();
        //Creating Data1
    ElectronicsDevice__c VarData1 = New ElectronicsDevice__c();
    VarData1.Price__c = 5000;
    VarData1.Type__c = 'TV';
    Bulklist.add(VarData1);
        //Creating Data3
        ElectronicsDevice__c VarData2 = New ElectronicsDevice__c();
    VarData2.Price__c = 4000;
    VarData2.Type__c = 'LED';
    Bulklist.add(VarData2);
        //Creating Data3
        ElectronicsDevice__c VarData3 = New ElectronicsDevice__c();
    VarData3.Price__c = 2000;
    VarData3.Type__c = 'LCD';
    Bulklist.add(VarData3);
        //Inserting Data
    Insert  Bulklist;
        //Creating sobjct for the Data
        ElectronicsDevice__c VarRecord1 = New ElectronicsDevice__c();
        ElectronicsDevice__c VarRecord2 = New ElectronicsDevice__c();
        ElectronicsDevice__c VarRecord3 = New ElectronicsDevice__c();
    //Getting Record Id for all the Data
    id RecordID1 = Bulklist[0].id; 
    id RecordID2 = Bulklist[1].id;
    id RecordID3 = Bulklist[2].id;
    //Getting Data From Database
    VarRecord1 = [Select Price__c FROM ElectronicsDevice__c WHERE ID=:RecordID1];
    VarRecord2 = [Select Price__c FROM ElectronicsDevice__c WHERE ID=:RecordID2];
    VarRecord3 = [Select Price__c FROM ElectronicsDevice__c WHERE ID=:RecordID3];    
    //Validating the output
    System.assertEquals(2500, VarRecord1.Price__c);
    System.assertEquals(3200, VarRecord2.Price__c);
    System.assertEquals(1400, VarRecord3.Price__c);    
    }//Discount
}