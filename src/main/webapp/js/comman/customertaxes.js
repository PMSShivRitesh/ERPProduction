


function getApplyeTaxOfCustomer()
{
	hide();
	var custName=$("#custName").val();
     alert(custName)
	$.getJSON('getApplyeTaxOfCustomer.html',{custName:custName}).done(function(json) {
	
		
		if(json[0].custgst=="YES")
		{
			
			 $("#gstdiv").show();
		}
	
		
		if(json[0].custcst=="YES")
		{ 
			
			 $("#cstdiv").show();
		}
		
		if(json[0].custexcise=="YES")
		{
			$("#excisediv").show();
			var exiseamt=parseFloat(document.getElementById("bTotal").value)*0.125;
			document.getElementById("exciseAmt").value=Math.round(exiseamt);
		
		}
		if(json[0].custvat=="YES")
		{
			 $("#vatdiv").show();
			 var vatamt=(parseFloat(document.getElementById("bTotal").value)+parseFloat(document.getElementById("exciseAmt").value))*0.125;
			document.getElementById("vatAmt").value=Math.round(vatamt);
				
			var netAmt=parseFloat(document.getElementById("bTotal").value)+parseFloat(document.getElementById("exciseAmt").value)+parseFloat(document.getElementById("vatAmt").value)
			document.getElementById("netAmt").value= Math.round(netAmt);
			
		}
		
		if(json[0].custservicetax=="YES")
		{
			 $("#servicetaxdiv").show();
		}
		
	
		
	  })
.fail(function( jqxhr, textStatus, error ) {
alert("fail");
	});

	
}
