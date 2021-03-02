({
	CreateCustomer : function(component,event,helper) {
    //Create Log
    console.log('Create record');
    //Getting Client Information
    var VarCutomerInfo = component.get("v.Customer"); 
    //Validation 
        if($A.util.isEmpty(VarCutomerInfo.Name)||$A.util.isUndefined(VarCutomerInfo.Name)){
            alert('First Name Required');
            return;
        }
        
        if($A.util.isEmpty(VarCutomerInfo.Last_Name__c)||$A.util.isUndefined(VarCutomerInfo.Last_Name__c)){
            alert('Last Name Required');
            return;
        }
       helper.CallHelper(component,VarCutomerInfo);
	}
})