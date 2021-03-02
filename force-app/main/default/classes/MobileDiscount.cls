//Class for mobile dicount on Mobile Object 
public class MobileDiscount {
    //Trigger Function for Dicount
    Public Static Void TriggerDiscount_BeforeInsert(list<Mobile__c> VarMobileBrandList){
        For(Mobile__C VarTempValue : VarMobileBrandList){
            If(VarTempValue.Brand__c =='Apple'){
                VarTempValue.Price__c = VarTempValue.Price__c-(VarTempvalue.Price__C*0.20);
                VarTempValue.Discount_Status__c ='Congrats! You got 20% Dicsount'; 
        }
            Else if(VarTempValue.Brand__c == 'Samsung')
            {
                VarTempValue.Price__c = VarTempValue.Price__c-(VarTempvalue.Price__C*0.1);
                VarTempValue.Discount_Status__c ='Congrats! You got 10% Dicsount'; 
            }
            
    }//For Ends
        
        
}//TriggerDiscount_BeforeInsert
     Public Static Void TriggerDiscount_BeforeUpdate(list<Mobile__c> VarMobileBrandList){
        For(Mobile__C VarTempValue : VarMobileBrandList){
            If(VarTempValue.Brand__c =='Samsung'){
                VarTempValue.Price__c = VarTempValue.Price__c-(VarTempvalue.Price__C*0.05);
                VarTempValue.Discount_Status__c ='Congrats! You got 5% Dicsount'; 
        }
            
    }//For Ends
        
        
}//TriggerDiscount_BeforeUpdateEnds
    Public Static Void DeleteAcc(list<Mobile__c> VarMobileList){
        For(Mobile__C VarTempValue : VarMobileList){
            If(VarTempValue.ownerid != Userinfo.getUserId()){
            VarTempValue.addError('Only Owner Can Delete the Record!');
            } 
        }//For Ends    
    }//DeleteAccount Ends   
}//Class