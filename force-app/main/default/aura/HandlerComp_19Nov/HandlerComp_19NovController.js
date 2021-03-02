({
	    HandlerComponent : function(component, event, helper) {
		var message = event.getParam("message");
        component.set("v.MessageFromEvent",message);
        var NumberofEventsHandled = parseInt(component.get("v.CountofEvent")+1);
        component.set("v.CountofEvent",NumberofEventsHandled);
	}
})