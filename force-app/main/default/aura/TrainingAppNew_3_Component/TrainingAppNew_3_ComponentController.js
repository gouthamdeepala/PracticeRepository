({
    CheckEligibility : function(component) {
        var vAge = component.find("Age").get("v.value"); 
        if(vAge >= 18)
        component.set("v.VoteCheck",true);
        else
        component.set("v.VoteCheck",false);    
     	}
})