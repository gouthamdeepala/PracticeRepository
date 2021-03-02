public class ComputerCapacity {
    //Trigger Function for the capacity
    Public Static void ComputerCapacityTrigger(list<Computer__C> VarComputerList){
        For (Computer__c VarTempList : VarComputerList){
            System.debug('Running BeforeInsert one');
            If(VarTempList.RAM_in_GB__c < 1 && VarTempList.Processor_in_GHz__c < 2 && VarTempList.Hard_Disk_in_GB__c< 50){
                
               VarTempList.Capacity__c = 'Low Capacity';
            }
        }
        
    }
Public Static void ComputerCapacityTrigger_BeforeUpdate(list<Computer__C> VarComputerList){
        For (Computer__c VarTempList : VarComputerList){
            System.debug('Running BeforeUpdate one');
            If(VarTempList.RAM_in_GB__c < 1 && VarTempList.Processor_in_GHz__c < 2 && VarTempList.Hard_Disk_in_GB__c< 50){
                
               VarTempList.Capacity__c = 'Low Capacity';
            }
            Else{
               VarTempList.Capacity__c = ''; 
            }
        }
        
    }
}