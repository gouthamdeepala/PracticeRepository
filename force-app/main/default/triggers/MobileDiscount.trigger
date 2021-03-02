trigger MobileDiscount on Mobile__c (before insert,before update,before delete) {//Trigger For Discount on mobile object
    If(Trigger.IsInsert == True && Trigger.isBefore == True){//Trigger for Before Insert
        MobileDiscount.TriggerDiscount_BeforeInsert(Trigger.New);
    }
    If(Trigger.Isupdate == True && Trigger.isBefore == True){ //Trigger for Before Update
        MobileDiscount.TriggerDiscount_BeforeUpdate(Trigger.New);
    }
    If(Trigger.isBefore == True && Trigger.isDelete == True){
       MobileDiscount.DeleteAcc(Trigger.New); 
    }
    
}