public class Assignmnet_15APr {
   Public String FirstName{set;Get;}
   Public String MiddleName{set;Get;}
   Public String LastName{Set;Get;}
   Public String FullName{Set;Get;} 

    Public Void Save(){
        FullName = FirstName +' '+ MiddleName +' ' + LastName;
        
    }    
}