@isTest
public class MobileDiscountTest {
    Static testmethod Void TestInsert1(){
        Mobile__C VarTempvalue = New Mobile__C();
        VarTempvalue.Brand__c = 'Apple';
        VarTempvalue.Price__c = 2000;
        Insert VarTempvalue;
        Mobile__C VarTempAfterUpdate = New Mobile__C();
        VarTempAfterUpdate = [Select Price__c,Discount_Status__c FROM Mobile__C WHERE id =: VarTempvalue.Id];
        System.assertEquals(1600,VarTempAfterUpdate.Price__c);
        system.assertEquals('Congrats! You got 20% Dicsount',VarTempAfterUpdate.Discount_Status__c);
    }//TestInsert1
     Static testmethod Void TestInsert2(){
        Mobile__C VarTempvalue = New Mobile__C();
        VarTempvalue.Brand__c = 'Samsung';
        VarTempvalue.Price__c = 2000;
        Insert VarTempvalue;
        Mobile__C VarTempAfterUpdate = New Mobile__C();
        VarTempAfterUpdate = [Select Price__c,Discount_Status__c FROM Mobile__C WHERE id =: VarTempvalue.Id];
        System.assertEquals(1800,VarTempAfterUpdate.Price__c);
        system.assertEquals('Congrats! You got 10% Dicsount',VarTempAfterUpdate.Discount_Status__c);
    }//TestInsert2
     Static testmethod Void TestUpdate1(){
        Mobile__C VarTempvalue = New Mobile__C();
        VarTempvalue.Brand__c = 'Samsung';
        VarTempvalue.Price__c = 1000;
         Insert VarTempvalue;
         Update VarTempvalue;
        Mobile__C VarTempAfterUpdate = New Mobile__C();
        VarTempAfterUpdate = [Select Price__c,Discount_Status__c FROM Mobile__C WHERE id =: VarTempvalue.Id];
        System.assertEquals(950,VarTempAfterUpdate.Price__c);
        system.assertEquals('Congrats! You got 5% Dicsount',VarTempAfterUpdate.Discount_Status__c);
    }//TestUpdate1
}