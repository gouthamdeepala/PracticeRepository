({
	getEligibility : function(component) {
      var vFirstname = component.find("First Name").get("v.value");
      var vLastname  = component.find("Last Name").get("v.value"); 
      var outputname = component.find("output");
      var Fulname = vFirstname+" "+vLastname;
      outputname.set("v.value",Fulname); 
      var vAge = component.find("Agec").get("v.value");
        if(vAge>=18)
        component.set("v.EligiblityCheck",true);
        else
        component.set("v.EligiblityCheck",false);    
            
	}
})