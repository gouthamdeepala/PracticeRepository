({
	HandleEvent : function(component, event, helper) {
		var message = event.getParam("message");
        component.set("v.MessageFromEvent",message);
        var vIntCount = parseInt(component.get("v.EventTriggeredCount")+1);
        component.set("v.EventTriggeredCount",vIntCount);
	}
})