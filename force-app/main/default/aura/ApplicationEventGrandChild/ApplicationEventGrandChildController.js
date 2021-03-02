({
	HandleEvent : function(component, event, helper) {
        var varAppEvent = $A.get("e.c:TrainingApplicationEvent_Event");
        varAppEvent.setParams({
            "message" : "The Event is fired by Notifier Cmp"   
        });
        varAppEvent.fire();
	}
})