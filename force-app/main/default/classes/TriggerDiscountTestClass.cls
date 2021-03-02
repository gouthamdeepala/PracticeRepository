@isTest
public class TriggerDiscountTestClass{
    static testmethod void Function1(){
        Reynold__C varP = New Reynold__C();
        varP.Name = 'Durga';
        varP.Price__c = 500;
        Insert varP;
        Reynold__c M = [SELECT Price__c FROM Reynold__C WHERE ID=:VarP.Id];
        System.assertEquals(480, M.Price__c);
        M.Price__c=500;
        Update M;
    }
}