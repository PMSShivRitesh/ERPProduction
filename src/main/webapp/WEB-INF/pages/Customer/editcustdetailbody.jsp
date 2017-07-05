<fieldset class="fieldset-style">
<form role="form" action="getCustDetail.html">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Edit Customer Detail</div>
						<div class="span2" align="right">
							<!-- <input type="submit" class="btn-save" value="" id="btnsave" /> -->
							<button type="button"  class="btn-save" onclick="updateCustomerDetail()">
  								
							</button>
							<div class="btn" title="Cancel" onclick="gethomepage();" id="btnclear">
								<i class="icon-home"></i>
							</div>
							
							<div class="btn" align="right" title="Next Form" onclick="getNextForm()" >
							<i class="icon-forward"></i>
							<!--  	<input type="button" class="glyphicon glyphicon-step-backward" value="Next" onclick="getNextForm()"/>-->
							</div>
							<!-- <div class="btn" title="Cancel" onclick="clearForm();" id="btnclear">
								<i class="icon-trash"></i>
							</div>
 -->						</div>
					</div>
				</div>
			</div>

		</div>
		</div>
	 </form> 
	 
	 
	  <!-- //2 Pannel -->
	 
	 <div class="form-horizontal">
		<div class="panel panel-default">
			

			<div class="container-fluid panel-body">
				<div class="row-fluid search-align">
					<div class="firstquad">
						<div class="control-group">
							<label class="control-label">Customer Name</label>
							<div class="controls">
								<input type="hidden" value="${customerdetail.custId}" name="custId" id="custId">
								<input type="text" class="form-control" id="custName" id="custName" value="${customerdetail.custName}" placeholder="" />
							</div>
						</div>
						
						 <div class="control-group">
							<label class="control-label">Country</label>
							<div class="controls">
								<input type="text"  name="custCountry" id="custCountry"  value="${customerdetail.custCountry}" class="form-control" placeholder="" />
							</div>
						</div>
						
						<div class="control-group">
							<label class="control-label">District</label>
							<div class="controls">
								<input type="text"   value="${customerdetail.custdistrict}" name="custdistrict" id="custdistrict" class="form-control" placeholder="" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Pin / Zip Code</label>
							<div class="controls">
								<input type="text" name="custZipCode" id="custZipCode" value="${customerdetail.custZipCode}"  class="form-control" placeholder="" />
							</div>
						</div>
					<div class="control-group">
							<label class="control-label">Email</label>
							<div class="controls">
								<input type="text"  value="${customerdetail.custemail}" name="custEmail" id="custEmail" class="form-control" placeholder="" />
							</div>
						</div>
						
						
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">Short Name</label>
							<div class="controls">
								<input type="text" name="custshortcutname" id="custshortcutname" value="${customerdetail.custshortcutname}" class="form-control" placeholder="" />
							</div>
						</div>
						 <div class="control-group">
							<label class="control-label">State</label>
							<div class="controls">
								<input type="text"  value="${customerdetail.custstate}" name="custstate" id="custstate" class="form-control" placeholder="" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Taluka</label>
							<div class="controls">
								<input type="text"  name="custtaluka" id="custtaluka" value="${customerdetail.custtaluka}"  class="form-control" placeholder="" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Website URL</label>
							<div class="controls">
								<input type="text" name="custwebsite" id="custwebsite" value="${customerdetail.custwebsite}"  class="form-control">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Contact No</label>
							<div class="controls">
								<input type="text" name="custcontactno" id="custcontactno"  value="${customerdetail.custcontactno}"  class="form-control" placeholder="" />
							</div>
						</div> 
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
								<div class="control-group">
							<label class="control-label">Address</label>
							<div class="controls">
								<textarea  class="form-control" rows="6"  name="custAddress" id="custAddress" >${customerdetail.custAddress}</textarea>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Status</label>
							<div class="controls">
								<input type="text"  value=""  class="form-control" placeholder="" />
							</div>
						</div>
											
					</div>
					
				</div>
			</div>
		</div>
		</div>
		<!-- For check box -->
				<!-- 3 pannel -->
		
		 <div class="form-horizontal">
		<div class="panel panel-default">
			<!-- <div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Title</div>
						
					</div>
				</div>
			</div> -->
			<div class="container-fluid panel-body">
				<div class="row-fluid search-align">
					<div class="firstquad">
						<div class="control-group">
							<label class="control-label">GST Apply</label>
							<div class="controls">
								<c:choose>
    							<c:when test="${customerdetail.custgst=='YES'}">
     	 							<input type="checkbox"  name="custgst" id="custgst" checked >
      							</c:when>    
  						  		<c:otherwise>
    								  <input type="checkbox" name="custgst" id="custgst">
  							 	 </c:otherwise>
							</c:choose>
							</div>
						</div>
						
						</div>
				</div>
				</div>
		</div>
		</div>
		
		
	</fieldset>	
	

<script>

$(document).ready(function() {
    $(function() {
    	
            $("#custName").autocomplete({     
            source : function(request, response) {
            $.ajax({
                    url : "getCustNameList.html",
                    type : "GET",
                    data : {
                            term : request.term
                    },
                    dataType : "json",
                    success : function(data) {
                            response(data);
                    },
                            error: function(jqxhr,textStatus,errorThrown)
                            {
                                console.log(jqxhr);
                                    console.log(textStatus);
                                    console.log(errorThrown);                               

                                    for (key in jqxhr)
                                        alert(key + ":" + jqxhr[key])                                                                 
                                    for (key2 in textStatus)
                                        alert(key + ":" + textStatus[key])
                                    for (key3 in errorThrown)
                                        alert(key + ":" + errorThrown[key])

                           //<--- All those logs/alerts, don't say anything helpful, how can I understand what error is going on? ---->

                        }});
    }
});
});
});


function updateCustomerDetail() {
	
	
		// get the form values
		
	   	var custName = $('#custName').val();
		var custId = $('#custId').val();
		
	    var custshortcutname= $('#custshortcutname').val();
	    var custAddress = $('#custAddress').val();
	    var custCountry = $('#custCountry').val();
	    var custstate = $('#custstate').val();
	    var custdistrict = $('#custdistrict').val();
	    var custtaluka = $('#custtaluka').val();
	    var custZipCode = $('#custZipCode').val();
	    var custwebsite = $('#custwebsite').val();
	    var custemail = $('#custemail').val();
	    var custgst = $('#custgst').val();
	    var custcst = $('#custcst').val();
	    var custvat = $('#custvat').val();
	    var custexcise = $('#custexcise').val();
	    var custservicetax = $('#custservicetax').val();
	    var custcontactno = $('#custcontactno').val();
	    
	    if(document.getElementById('custgst').checked) {
	    	custgst="YES"
	    } else {
	    	custgst="NO"
	    }
	    
	    
	    if(document.getElementById('custcst').checked) {
	    	custcst="YES"
	    } else {
	    	custcst="NO"
	    }
	    
	    if(document.getElementById('custvat').checked) {
	    	custvat="YES"
	    } else {
	    	custvat="NO"
	    }
	    
	    
	    if(document.getElementById('custexcise').checked) {
	    	custexcise="YES"
	    } else {
	    	custexcise="NO"
	    }
	    
	    
	    if(document.getElementById('custservicetax').checked) {
	    	custservicetax="YES"
	    } else {
	    	custservicetax="NO"
	    }
	    
	 
	    $.ajax({
	    type: "POST",
	    url: "updateCustDetail.html",
	    data: "custName=" + custName + "&custshortcutname=" + custshortcutname+ "&custAddress=" +custAddress+ "&custCountry=" + custCountry+ "&custstate=" +custstate+ "&custAddress=" +custAddress+ "&custCountry=" + custCountry+ "&custstate=" +custstate+ "&custdistrict=" + custdistrict+ "&custtaluka=" + custtaluka+ "&custZipCode=" + custZipCode+ "&custwebsite=" +custwebsite+ "&custemail=" +custemail+ "&custgst=" +custgst+ "&custcst=" +custcst+ "&custvat=" +custvat+ "&custexcise=" +custexcise+ "&custservicetax=" +custservicetax+ "&custId=" +custId+ "&custcontactno=" +custcontactno,
	    success: function(response){
	    alert("Updated Successfully")
	    $('#info').html(response);
		
	    },
	    error: function(e){
	    	alert("ERROR")
	    	
	  
	    }
	    });
	    
		
		}
    
   
   function getNextForm()
   {
	   var name=document.getElementById("name").value;
	   location.href="getCustAllDetail.html?custName="+name;
   }
    
   

   function  gethomepage()
   {
   	  location.href="getSystems.html?moduleName=customer";
   }

</script>