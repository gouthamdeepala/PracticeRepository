({
	getcustinfo : function(component) {
		var action = component.get("getCustomerinfo");
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state == "SUCCESS"){
                component.set("v.CustList",response.getReturnValue());
            }   
        });
        $A.enqueueAction(action);
	}
})