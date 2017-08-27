<fieldset class="fieldset-style">

<div class="alert alert-success" id="idsuccess">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<i class="icon-thumbs-up"></i>Records added successfully!
		</div>
		<script type="text/javascript">
		$("#idsuccess").hide();
		</script>
		
		
<form role="form" action="saveSupplierDetail.html" method="post">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Add New Supplier</div>
						<div class="span2" align="right">
							<input type="submit" class="btn-save" value="" id="btnsave" title="Save Filled Data" />
							<div class="btn" title="Go To Supplier Home" onclick="gethomepage();" id="btnclear" >
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
							<label class="control-label">Supplier name</label>
							<div class="controls">
									<input type="text" class="form-control" name="suppName" id="suppName" placeholder="" onblur="checksupplier()" required="required"/>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Short Name</label>
							<div class="controls">
								<input type="text" class="form-control" name="suppShortCutName" placeholder="" />
							</div>
						</div>
					 <div class="control-group">
							<label class="control-label">Address</label>
							<div class="controls">
								<textarea  rows="4" class="form-control" name="suppAddress" placeholder="" required="required"></textarea>
							</div>
						</div>
						
						<div class="control-group">
							 <label class="control-label">GST Apply</label>
							<div class="controls">
							<input type="checkbox" name="suppGst" value="YES"> 
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
							<label class="control-label">Select Country</label>
							<div class="controls">
								<select class="form-control" name="countryName" id="countryName"  onchange="getStateLst()" required="required">
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
							<label class="control-label">Select State</label>
							<div class="controls">
								<select class="form-control" name="stateName" id="stateName" onchange="getDistrictLst()" required="required">
											<option></option>
											
										</select>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Select District</label>
							<div class="controls">
								<select class="form-control" name="districtName" id="districtName" onchange="getTalukaLst()" required="required">
											<option></option>
										</select>
							</div>
						</div>
							
						<div class="control-group">
							<label class="control-label">Taluka</label>
							<div class="controls">
									<select class="form-control" name="talukaName" id="talukaName" required="required">
											<option></option>
											
										</select>
							</div>
						</div>

						<div class="control-group">
							<label class="control-label">Zip Code</label>
							<div class="controls">
								<input type="text" class="form-control" name="suppZipCode" placeholder="" />
							</div>
						</div>
						
							
						
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
					<div class="control-group">
							<label class="control-label">Email</label>
							<div class="controls">
							<input type="email" class="form-control" name="suppEmail" placeholder="" />
							</div>
						</div>
						
					<div class="control-group">
							<label class="control-label">Landline No.</label>
							<div class="controls">
							<input type="text" class="form-control"  name="suppConatactNo" placeholder="" />
							</div>
						</div> 
						<div class="control-group">
							<label class="control-label">Mobile No.</label>
							<div class="controls">
							<input type="text" class="form-control"  name="suppMobileNo" placeholder="" required="required"/>
							</div>
						</div> 
					
						
						<div class="control-group">
							<label class="control-label">Website URL</label>
							<div class="controls">
								<input type="text" class="form-control" name="suppWebsite" placeholder="" />
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
	
	
	
	function checksupplier()
	{
			
		    var suppName = $('#suppName').val();
		  
		    $.ajax({
		    type: "POST",
		    url: "checksupplierexist.html?suppName="+suppName,
		  
		    success: function(data){

		    	if(data=='"1"'){
		    		 $('#idsuccess').hide();
					}
		    else
		    	{
		    		 $('#suppName').val('');
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
					   	$('#districtName').append('<option value="">Select District</option>');
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
	
	
	function  gethomepage()
	{
		  location.href="getSystems.html?moduleName=Supplier";
	}


	
</script>