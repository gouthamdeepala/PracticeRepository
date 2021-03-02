public class TriggerDiscount {
    
    Public Static Void TriggerDisc(list<Reynold__c> VarDiscountList){
        for(Reynold__c TempValue : VarDiscountList)  {
            If(TempValue.Price__c>=100){
            TempValue.Price__c = TempValue.Price__c - 20;
                }
            Else if(TempValue.Price__c<=0){
                TempValue.AddError('Please enter Correct Amount');
            }
        }
    
}
     Public Static Void TriggerDiscBeforeUpdate(list<Reynold__c> VarDiscountList1,list<Reynold__c> VarDiscountList2){
         for(Reynold__c TempValue : VarDiscountList1)  {
             for(Reynold__c TempValue2 : VarDiscountList2){
            If(TempValue.Price__c==TempValue2.Price__c){
               System.debug('Price is Equal');
                }
                 Else{
                  TempValue.Price__c = TempValue.Price__c - 20;   
                 }
                 
    }
}
}
}