public class ReynoldPensAutoDelete {
    @Invocablemethod 
    Public static Void AutoDelete(list<Reynold__c> varRecord){
        For(Reynold__c VarTemp : varRecord){
        Delete VarTemp;
            }
    }
}