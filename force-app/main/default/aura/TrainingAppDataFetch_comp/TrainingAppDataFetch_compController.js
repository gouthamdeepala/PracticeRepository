({
	doInit : function(component, event, helper) {
				var action = component.get("c.customerInfo");
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state == "SUCCESS"){
                component.set("v.CustomerList", response.getReturnValue());
            }  
            else{
                alert('Data Retrieve failure');
            }
        });
        $A.enqueueAction(action);
	}
})