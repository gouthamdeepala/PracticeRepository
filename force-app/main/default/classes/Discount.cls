Public Class Discount
{
//Creating Function for Trigger 
Public Static Void TriggerDiscount(list<Property__c> VarDiscountList)
{
For(Property__c VarTempValue : VarDiscountList){
If(VarTempValue.Type__c=='Row House'){
VarTempValue.Price__c = VarTempValue.Price__c-(VarTempValue.Price__c*0.05);
}
}
}
}