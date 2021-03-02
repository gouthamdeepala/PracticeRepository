public class EmailClass {

    Public String Toaddress{Set;get;}
    public String CCAddress{Set;get;}
    Public String RepAddress{Set;get;}
        
        Public Void EmailDemo(){
        Messaging.SingleEmailMessage email = New  Messaging.SingleEmailMessage();
            String[] to = New String[] {Toaddress};
            String[] cc = New String[] {CCAddress};
                 email.setToAddresses(to);
                If(CCAddress!=Null && CCAddress!='')
                    email.setCcAddresses(cc);
            If(RepAddress!=Null && RepAddress!='')
                email.setInReplyTo(RepAddress);
           email.setSubject('Congrats Your order is placed');
           email.sethtmlbody('Dear Customer,<Br></Br> This is to inform that your order has been placed<Br></BR> Regards<Br></Br> Halwa Raj');
            try{
             Messaging.sendEmail(new Messaging.SingleEmailMessage[] {email});
            }Catch(exception e){
                system.debug('The message related to error is '+e.getMessage());
            }
                
            
        //REset the fields    
        Toaddress = '';
        CCAddress = '';
        RepAddress = '';
           
        }//EmailDemo Ends
    
   
        
        
    
        
        
}