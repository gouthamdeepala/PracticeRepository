Trigger ReynoldPens_Discount on Reynold__c (before insert,before update) {
    If(Trigger.isbefore == True && Trigger.isinsert==True){
    TriggerDiscount.TriggerDisc(Trigger.New);
        }
    If(Trigger.isbefore== True && Trigger.isUpdate==True){
    TriggerDiscount.TriggerDiscBeforeUpdate(Trigger.New,Trigger.old);
    }
}