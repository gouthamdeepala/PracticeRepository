public with sharing class Reynoldpens {
    @AuraEnabled
    Public static void InsertRecord(Reynold__C NewRecord){
        If(NewRecord!=Null){
            insert NewRecord;
        }
    }
}