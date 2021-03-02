global class BatchClassEx implements Database.Batchable<sObject>,Database.stateful {
    //Start Function of the batch class
    global Database.QueryLocator start (Database.BatchableContext Bc){
        String  Query = 'SELECT Price__c FROM Reynold__c';
        return database.getQueryLocator(Query);
        
    }
    //Execute Function of the batch Class
    global void execute(database.BatchableContext Bc, list<Reynold__c> scope ){
        for(Reynold__c a :scope ){
            a.price__C = 900;
        }
        update scope;
    }
    //Finish Function of the batch class
    global void finish(Database.BatchableContext Bc){
        
    }
}