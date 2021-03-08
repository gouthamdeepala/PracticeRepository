({
    CallFunction : function(component, event, helper) {
let value = component.get("v.Output");
let input = component.get("v.input");
component.set("v.Output",input);
    }
})
