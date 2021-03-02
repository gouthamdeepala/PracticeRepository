public class ElectronicsDeviceDisc {
    
    Public Static void Discount(list<ElectronicsDevice__c> VarItemList){
        For(ElectronicsDevice__c VarTemplist : VarItemList){
            If(VarTemplist.Type__c == 'TV'){
              VarTemplist.Price__c = VarTemplist.Price__c/2;  
            }//If
          Else If(VarTemplist.Type__c == 'LCD'){
              VarTemplist.Price__c = VarTemplist.Price__c -(VarTemplist.Price__c*0.30);  
            }// Else If
            Else If(VarTemplist.Type__c == 'LED'){
              VarTemplist.Price__c = VarTemplist.Price__c -(VarTemplist.Price__c*0.20);  
            }//Else If
        }//For
        
    }//Disc

}