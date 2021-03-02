({
	CallHelper : function(component,VarCutomerInfo) {
	//Call Apex Function 
        var action = component.get("c.createrecord");
        //Setting Parameters
        action.setParams({
            Createrecord:VarCutomerInfo
        });
        action.setCallback(this,function(a){
            var state = a.getState();
            if(state =="SUCCESS"){
                var  varNewEmptyClientRecord = {'sobjectType':'HDFC_Customer_Details__c',
                             'Name':'',
                             'Last_Name__c':'',
                             'Email__c':'',
                             'Salary__c':''};
                component.set("v.Customer",varNewEmptyClientRecord);
                alert('Record Created Successfully');
            }
            else if(state =="ERROR"){
                alert('Error in calling server side Function');
            }   
        });
        $A.enqueueAction(action);	
	
	}
})