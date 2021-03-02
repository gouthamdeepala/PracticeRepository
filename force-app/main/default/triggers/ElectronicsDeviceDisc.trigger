trigger ElectronicsDeviceDisc on ElectronicsDevice__c (before insert) {
    If(Trigger.isInsert == True && Trigger.Isbefore == True){
    ElectronicsDeviceDisc.Discount(Trigger.New);    
    }
}