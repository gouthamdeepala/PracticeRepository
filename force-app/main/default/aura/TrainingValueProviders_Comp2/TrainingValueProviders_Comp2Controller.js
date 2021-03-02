({
	ButtonFunction : function(component, event, helper) {
        var vButtonID =   event.getSource().getLocalId();
        var vButtonName = event.getSource().get("v.name");
     alert('The Button id is '+vButtonID);
     component.set("v.ButtonName",vButtonName);
     component.set("v.ButtonId",vButtonID);   
       
	}
})