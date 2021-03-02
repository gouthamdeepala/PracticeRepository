({
	fireComponentEvent : function(component, event, helper) {
	var varcmpEvent = component.getEvent("cmpevent");
        varcmpEvent.setParams({
            "message" : "This Message is passed by component Event"
        });
        varcmpEvent.fire();
	}
})