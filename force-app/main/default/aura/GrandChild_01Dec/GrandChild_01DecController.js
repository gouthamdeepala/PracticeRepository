({
	NotifierComponent : function(component, event, helper) {
		var Vevent = component.getEvent("cmpevent");
        Vevent.setParams({
            "message" :"This message is passed by notifier component"  
        });
        Vevent.fire();
	}
})