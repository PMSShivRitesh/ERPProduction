<fieldset class="fieldset-style">
<form role="form" action="getSuppDetail.html">

<input type="hidden" name="suppId" id="suppId" value="${suppId}">
	 <div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Edit Supplier Detail</div>
						<div class="span3" align="right">
							<!-- <input type="submit" class="btn-save" value="" id="btnsave" /> -->
							<button type="button"  class="btn-save" onclick="updateSupplierDetail()" title="Update">
  								
							</button>
							
							<div class="btn" align="right" title="Go To Supplier Detail" onclick="getNextForm()" >
							<i class="icon-forward"></i>
							<!--  	<input type="button" class="glyphicon glyphicon-step-backward" value="Next" onclick="getNextForm()"/>-->
							</div>
							 <div class="btn" title="Go To Supplier Home" onclick="gethomepage();" id="btnclear">
								<i class="icon-home"></i>
							</div>
 					</div>
 
					
							
					</div>
					</div>
				</div>
			</div>

			<div class="container-fluid panel-body">
				<div class="row-fluid search-align">
					<div class="firstquad">
						<div class="control-group">
							<label class="control-label">Supplier Name</label>
							<div class="controls">
								<input type="text" class="form-control" name="suppName" id="suppName"  value="${supplierdetail.suppName}" placeholder="" />
							</div>
						</div>
						
						<div class="control-group">
							<label class="control-label">Country</label>
							<div class="controls">
									<input type="text"  name="countryName" id="countryName"  value="${supplierdetail.countryName}" class="form-control" placeholder="" />
							</div>
						</div>
						
						<div class="control-group">
							<label class="control-label">District</label>
							<div class="controls">
							<input type="text"   value="${supplierdetail.districtName}"  name="districtName" id="districtName"  class="form-control" placeholder="" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Pin / Zip Code</label>
							<div class="controls">
							<input type="text"  value="${supplierdetail.suppZipCode}" name="suppZipCode" id="suppZipCode" class="form-control" placeholder="" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Email</label>
							<div class="controls">
								<input type="text"  value="${supplierdetail.suppEmail}" name="suppEmail" id="suppEmail" class="form-control" placeholder="" />
							</div>
						</div>
						
						
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">Short Name</label>
							<div class="controls">
								<input type="text"    value="${supplierdetail.suppShortCutName}" name="suppShortCutName" id="suppShortCutName" class="form-control" placeholder="" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">State</label>
							<div class="controls">
								<input type="text"  value="${supplierdetail.stateName}"  name="stateName" id="stateName" class="form-control" placeholder="" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Taluka</label>
							<div class="controls">
								<input type="text" name="talukaName" id="talukaName"   value="${supplierdetail.talukaName}"  class="form-control" placeholder="" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Website URL</label>
							<div class="controls">
								<input type="text" name="suppWebsite" id="suppWebsite"  value="${supplierdetail.suppWebsite}"  class="form-control" placeholder="" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Landline No</label>
							<div class="controls">
								<input type="text"  name="suppConatactNo" id="suppConatactNo"  value="${supplierdetail.suppConatactNo}"  class="form-control" placeholder="" />
							</div>
						</div>
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
								<div class="control-group">
							<label class="control-label">Address</label>
							<div class="controls">
								<textarea name="suppAddress" id="suppAddress" class="form-control" rows="6"  >${supplierdetail.suppAddress}</textarea>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Status</label>
							<div class="controls">
							<input type="text"  name="suppName" id="suppName" value="${supplierdetail.suppStatus}"  class="form-control" placeholder="" />
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
							<label class="control-label" >GST Apply</label>
							<div class="controls">
								<c:choose>
    							<c:when test="${supplierdetail.suppGst=='YES'}">
     	 							<input type="checkbox" checked  name="suppGst" id="suppGst"> 
      							</c:when>    
  						  		<c:otherwise>
    								  <input type="checkbox" name="suppGst" id="suppGst"> 
  							 	 </c:otherwise>
							</c:choose>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Excise Apply</label>
							<div class="controls">
								<c:choose>
							<c:when test="${supplierdetail.suppExcise=='YES'}">
     	 							<input type="checkbox" checked  name="suppExcise" id="suppExcise">  
      							</c:when>    
  						  		<c:otherwise>
    								  <input type="checkbox" name="suppExcise" id="suppExcise"> 
  							 	</c:otherwise>
						</c:choose>
							</div>
						</div>
						
						
						</div>

					<div class="firstquad">
						<div class="control-group">
							<label class="control-label">CST Apply</label>
							<div class="controls">
								<c:choose>
									<c:when test="${supplierdetail.suppCst=='YES'}">
										<input type="checkbox" checked name="suppCst" id="suppCst">
									</c:when>
									<c:otherwise>
										<input type="checkbox" name="suppCst" id="suppCst">
									</c:otherwise>
								</c:choose>
							</div>
						</div>
						
						<div class="control-group">
							<label class="control-label">Service Tax Apply</label>
							<div class="controls">
								<c:choose>
							<c:when test="${supplierdetail.suppServiceTax=='YES'}">
     	 							<input type="checkbox" checked name="suppServiceTax" id="suppServiceTax">  
      							</c:when>    
  						  		<c:otherwise>
    								  <input type="checkbox" name="suppServiceTax" id="suppServiceTax" > 
  							 	</c:otherwise>
						</c:choose>
							</div>
						</div>
					</div>
					
					<div class="firstquad">
						<div class="control-group">
							<label class="control-label">VAT Apply</label>
							<div class="controls">
								<c:choose>
							<c:when test="${supplierdetail.suppVat=='YES'}">
     	 							<input type="checkbox" checked name="suppVat" id="suppVat">  
      							</c:when>    
  						  	
  						  		<c:otherwise>
    								  <input type="checkbox"  name="suppVat" id="suppVat"> 
  							 	</c:otherwise>
							
								
						</c:choose>
							</div>
						</div>
						
						
						<div class="control-group">
							<label class="control-label"></label>
							<div class="controls">
								
							</div>
						</div>
					</div>
		
						
				</div>
				</div>
		</div>
		</div>
		
		
		
		
	 
	 
	</fieldset>
	
	<script>

	
	function updateSupplierDetail() {
		
		
		// get the form values
		
	   	var suppName = $('#suppName').val();
		var suppId = $('#suppId').val();
		
	    var suppShortCutName= $('#suppShortCutName').val();
	    var suppAddress = $('#suppAddress').val();
	    var countryName = $('#countryName').val();
	    var stateName = $('#stateName').val();
	    var districtName = $('#districtName').val();
	    var talukaName = $('#talukaName').val();
	    var suppZipCode = $('#suppZipCode').val();
	    var suppWebsite = $('#suppWebsite').val();
	    var suppEmail = $('#suppEmail').val();
	    var suppGst = $('#suppGst').val();
	    var suppCst = $('#suppCst').val();
	    var suppVat = $('#suppVat').val();
	    var suppExcise = $('#suppExcise').val();
	    var suppServiceTax = $('#suppServiceTax').val();
	    var suppConatactNo = $('#suppConatactNo').val();
	    
	    if(document.getElementById('suppGst').checked) {
	    	suppGst="YES"
	    } else {
	    	suppGst="NO"
	    }
	    
	    
	    if(document.getElementById('suppCst').checked) {
	    	suppCst="YES"
	    } else {
	    	suppCst="NO"
	    }
	    
	    if(document.getElementById('suppVat').checked) {
	    	suppVat="YES"
	    } else {
	    	suppVat="NO"
	    }
	    
	    
	    if(document.getElementById('suppExcise').checked) {
	    	suppExcise="YES"
	    } else {
	    	suppExcise="NO"
	    }
	    
	    
	    if(document.getElementById('suppServiceTax').checked) {
	    	suppServiceTax="YES"
	    } else {
	    	suppServiceTax="NO"
	    }
	    
	 
	    
	  
	    $.ajax({
	    type: "POST",
	    url: "updateSuppDetail.html",
	    data: "suppName=" + suppName + "&suppShortCutName=" + suppShortCutName+ "&suppAddress=" + suppAddress+ "&countryName=" + countryName+ "&stateName=" +stateName+ "&districtName=" + districtName+ "&talukaName=" + talukaName+ "&suppZipCode=" + suppZipCode+ "&suppWebsite=" +suppWebsite+ "&suppEmail=" +suppEmail+ "&suppGst=" +suppGst+ "&suppCst=" +suppCst+ "&suppVat=" +suppVat+ "&suppExcise=" +suppExcise+ "&suppServiceTax=" +suppServiceTax+ "&suppConatactNo=" +suppConatactNo+ "&suppId=" +suppId,
	    success: function(response){
	    alert("Updated Successfully")
	    $('#info').html(response);
		
	    },
	    error: function(e){
	    	alert("ERROR")
	    	
	  
	    }
	    });
	    
		
		}
    
	function  gethomepage()
	   {
	   	  location.href="getSystems.html?moduleName=Supplier";
	   }
	
	function getNextForm()
	   {
		   var name=document.getElementById("suppName").value;
		   location.href="getSuppDetail.html?suppName="+name;
	   }
	
</script>