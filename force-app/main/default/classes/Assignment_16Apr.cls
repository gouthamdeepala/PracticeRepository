public class Assignment_16Apr {
    Public Static String FirstName{Set;Get;}
    Public Static String LastName{Set;Get;}
    Public Static String Company{Set;Get;}
    Public Static String Message{Set;Get;}    
    Public Assignment_16Apr(apexpages.StandardController stdcontroller){
        
    }
    Public Static Void SaveAs(){
        Lead a = New Lead();
        a.FirstName = FirstName;
        a.LastName  = LastName;
        a.Company   = Company;
        Insert a;
        Message = 'Welcome'+FirstName;
    }
    
}