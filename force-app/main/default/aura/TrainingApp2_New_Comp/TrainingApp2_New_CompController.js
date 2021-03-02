({
	CallFunction1 : function(component) {
        var Name = component.find("name").get("v.value");
        var output = component.find("Outputvalue");
        output.set("v.value",Name);
	}
})