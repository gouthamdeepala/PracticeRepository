({
	handlerCmpEvent : function(component, event) {
	var message=event.getParam("message");
     component.set("v.messageFromEvent",message);
     var NumofEventsHandled = parseInt(component.get("v.numofEvents")+1);
      component.set("v.numofEvents",NumofEventsHandled);  
	}
})