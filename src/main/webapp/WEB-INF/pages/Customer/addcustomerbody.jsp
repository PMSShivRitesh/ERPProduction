
<fieldset class="fieldset-style">
<div class="alert alert-success" id="idsuccess">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<i class="icon-thumbs-up"></i>Records added successfully!
		</div>
		<script type="text/javascript">
		$("#idsuccess").hide();
		</script>
<form role="form" action="saveCustomerDetail.html" method="post">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Add New Customer</div>
						<div class="span2" align="right">
							<input type="submit" class="btn-save" value="" id="btnsave" title="Save Filled Date" />
							<div class="btn" title="GO To Customer Systems" onclick="gethomepage();" id="btnclear">
								<i class="icon-home"></i>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="container-fluid panel-body">
				<div class="row-fluid search-align">
					<div class="firstquad">
						<div class="control-group">
							<label class="control-label">Customer name</label>
							<div class="controls">
								<input type="text" class="form-control" required="required" name="custName" id="custName" placeholder="" onblur="checkcutomer()" />
							</div>
						</div>
					 <div class="control-group">
							<label class="control-label">Address</label>
							<div class="controls">
								<textarea type="text" rows="6" class="form-control" name="custAddress" required="required" placeholder=""></textarea>
							</div>
						</div>
						
						<div class="control-group">
							 <label class="control-label">GST Apply</label>
							<div class="controls">
								<input type="checkbox" name="custgst" value="YES"> 
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Excise Apply</label>
							<div class="controls">
								<input type="checkbox" name="custexcise" value="YES"> 
							</div>
						</div>
						<!--<div class="control-group">
							<label class="control-label">Raw Material Rate</label>
							<div class="controls">
								<input type="text" class="form-control" id="supplierRate" name="supplierRate" readonly="readonly" placeholder="" />
							</div>
						</div>
						 -->
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						


					<div class="control-group">
							<label class="control-label">Short Name</label>
							<div class="controls">
								<input type="text" class="form-control" name="custshortcutname" required="required" placeholder="" />
							</div>
					</div>
						
						 <div class="control-group">
							<label class="control-label">Select Country</label>
							<div class="controls">
								<select class="form-control" name="custCountry" id="countryName" onchange="getStateLst()">
										<option>--Select Country--</option>
											<c:if test="${not empty countryllst}">
             		           					<c:forEach var="listValue" items="${countryllst}">
             		           					<option value="${listValue.key}">${listValue.value}</option>
											</c:forEach>
											</c:if>
										</select>
							</div>
						</div>
						
						<div class="control-group">
							<label class="control-label">Select District</label>
							<div class="controls">
								<select class="form-control" name="custdistrict" id="districtName" onchange="getTalukaLst()">
											<option></option>
										</select>
							</div>
						</div>

						<div class="control-group">
							<label class="control-label">Zip Code</label>
							<div class="controls">
								<input type="text" class="form-control" name="custZipCode" placeholder="" required="required"/>
							</div>
						</div>
						
							<div class="control-group">
							<label class="control-label">Landline No.</label>
							<div class="controls">
								<input type="text" class="form-control"  name="custcontactno" placeholder="" />
							</div>
						</div> 
						
						<div class="control-group">
							<label class="control-label">VAT</label>
							<div class="controls">
								<input type="checkbox" name="custvat" value="YES"> 
							</div>
						</div> 
						
						<div class="control-group">
							<label class="control-label">Service Tax Apply</label>
							<div class="controls">
								<input type="checkbox" value="YES" name="custservicetax">  
							</div>
						</div> 
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
						<div class="control-group">
							<label class="control-label">Email</label>
							<div class="controls">
								<input type="email" class="form-control" name="custemail" placeholder="" />
							</div>
						</div>
						
						 <div class="control-group">
							<label class="control-label">Select State</label>
							<div class="controls">
								<select class="form-control" name="custstate" id="stateName" onchange="getDistrictLst()">
											<option></option>
											</select>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Taluka</label>
							<div class="controls">
									<select class="form-control" name="custtaluka" id="talukaName">
											<option></option>
										</select>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Website URL</label>
							<div class="controls">
								<input type="text" class="form-control" name="custwebsite" placeholder="" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label"></label>
							<div class="controls">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label"></label>
							<div class="controls">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label"></label>
							<div class="controls">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">CST Apply</label>
							<div class="controls">
								<input type="checkbox" name="custcst" value="YES" >
							</div>
						</div>
						
											
					</div>
				</div>
			</div>
		</div>
		</div>
	 </form> 
	</fieldset>
	
	
	<script>
	 function  gethomepage()
	  {
		  location.href="getSystems.html?moduleName=customer";
	  }
	
	
	function checkcutomer()
	{
			
		    var custName = $('#custName').val();
		  
		    $.ajax({
		    type: "POST",
		    url: "checkcustomerexist.html?custName="+custName,
		  
		    success: function(data){
		    	if(data=='"1"'){
		    		 $('#idsuccess').hide();
					}
		    else
		    	{
		    		 $('#custName').val('');
		    	   $('#idsuccess').show();
		    	
		    	
		    //$("#idsuccess").show();
		    $("#idsuccess").html("<button type='button' class='close' data-dismiss='alert' onclick='hide();'>&times;</button><i class='icon-thumbs-up'></i>"+
		    		data);
		    
		   
		    
		    	}
		 
		    },
		    error: function(e){
		    alert('Error: ' + e);
		    }
		    });
		
	}


	function getStateLst()
		{
		
			var countryName=document.getElementById("countryName");
			var country = countryName.options[countryName.selectedIndex].value;
			
			
					var countryList;
					jQuery.ajax({
				 	 url: "getJsonStateList.html?name="+country,
	 				 type: "POST",
		
				  	dataType: "json",
					async: false,
	  				success: function (data) {
	  					countryList = data
	  					
	      					$('#stateName').empty();
	  					   	$('#stateName').append('<option value="">Select State</option>');
	     					 for (i in countryList ) {
	   		
	       			   $('#stateName').append('<option value="' + countryList[i].stateId + '">' +countryList[i].stateName + '</option>');
	      				}
	 			 		}
			
						});
				
				
			
		}
	
	

function getDistrictLst()
{

	var stateName=document.getElementById("stateName");
	var state = stateName.options[stateName.selectedIndex].value;
	
			var stateList;
			jQuery.ajax({
		 	 url: "getJsonDistrictList.html?name="+state,
				 type: "POST",

		  	dataType: "json",
			async: false,
				success: function (data1) {
					stateList = data1
					
					
  					$('#districtName').empty();
					   	$('#districtName').append('<option value="">Select Districta</option>');
 					 for (i in stateList) {
 						
   			   $('#districtName').append('<option value="' + stateList[i].districtId + '">' +stateList[i].districtName + '</option>');
  				}
			 		}
	
				});
		
		
	
}

function getTalukaLst()
{
	var districtName=document.getElementById("districtName");
	var district = districtName.options[districtName.selectedIndex].value;
	
			var talukaList;
			jQuery.ajax({
		 	url: "getJsonTalukaList.html?name="+district,
			type: "POST",

		  	dataType: "json",
			async: false,
				success: function (data1) {
					talukaList = data1
					
					
  					$('#talukaName').empty();
					   	$('#talukaName').append('<option value="">Select Taluka</option>');
 					 for (i in talukaList) {
 						
   			   $('#talukaName').append('<option value="' + talukaList[i].talukaId + '">' +talukaList[i].talukaName + '</option>');
  				}
			 		}
	
				});
			
	
}
	
</script>