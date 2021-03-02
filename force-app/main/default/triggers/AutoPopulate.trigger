Trigger AutoPopulate on Student__c(Before Insert){
//using Context Variable
If(Trigger.isInsert == True && Trigger.isBefore == True){
Student.AutoTrigger(Trigger.New);
}
}