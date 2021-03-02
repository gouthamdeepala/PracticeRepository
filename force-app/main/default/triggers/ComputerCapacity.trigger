trigger ComputerCapacity on Computer__c (before insert,before update) {
    If (Trigger.isInsert == True && Trigger.isBefore == True){
        ComputerCapacity.ComputerCapacityTrigger(Trigger.New);
    }
    If (Trigger.isUpdate == True && Trigger.isBefore == True){
       ComputerCapacity.ComputerCapacityTrigger_BeforeUpdate(Trigger.New);
        
    }
    
}