@isTest//Annotation for test class
public class StudentTest {//class for the test class naming convention should be ClassnameTest
    Static testmethod void Testfunction1(){
      Student__C VarStudentRecord = New Student__C();//Creating sobject for the Student object
        VarStudentRecord.Name__c = 'Goutham';//Entering the Name 
        VarStudentRecord.Age__c = 29;//Enterig the Age
        VarStudentRecord.Experience__c = 9;//Entering the Experience
        
        insert VarStudentRecord;//Inserting the record
        //Creating new sObject for fetching updated record
       // Student__C VarStudentRecordupdated = New Student__C();
        //Storing the record in variable using Query
     Student__C   VarStudentRecordupdated = [Select Status__c From Student__C Where Id =: VarStudentRecord.Id];
        System.AssertEquals('Selected',VarStudentRecordupdated.Status__c);
    }//Testfunction1 Ends
}