//Creating Class for Auto populate Status field Trigger
Public Class Student{
Public Static void AutoTrigger(list<Student__c> VarStudentList){
For(Student__c VarTempvalue : VarStudentList){
If(VarTempvalue.Experience__c > 8 && VarTempvalue.Age__C < 30){
VarTempvalue.Status__c = 'Selected';
}
}
}
}