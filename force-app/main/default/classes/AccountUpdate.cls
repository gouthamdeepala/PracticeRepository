public class AccountUpdate {

    Public Static Void AccountUpdate(){
        //Creating List fot the Account 
        list<Account> VarList = New list<Account>();
        //Fetch the Values into the list
        VarList =[SELECT id FROM Account WHERE Name = 'Amazon'];
        //Create a new List to store the values 
       List<Account> VarList2 = New List<Account>();
        //For each loop to add the website
        For(Account VarTemp :VarList){
          VarTemp.Website = 'WWW.Amazon.com';
           VarList2.add(VarTemp); 
        }//For Ends
       //UPdate the List
       Update VarList2;
    }//Account Update Ends
 
}