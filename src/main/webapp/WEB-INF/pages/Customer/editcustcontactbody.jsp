<fieldset class="fieldset-style">
<div class="alert alert-success" id="idsuccess">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<i class="icon-thumbs-up"></i>
		</div>
		<script type="text/javascript">
		$("#idsuccess").hide();
		</script>
<form action="addCustomerContactPersions.html" method="post">
<input type="hidden" name="custId" id="custId" value="${custId}">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Edit Customer Contact People
							
						</div>
						<div class="span3" align="right">
							<input type="submit" class="btn-save" value="" id="btnsave" />
							<div class="btn" onclick="deleteRowsChecked();" id="deletebtn" title="Delete selected Contact Persion">
								<i class="icon-trash"></i>
							</div>
							
							<div class="btn" align="right" title="Go To Customer Detail" onclick="getNextForm()" >
							<i class="icon-forward"></i>
							<!--  	<input type="button" class="glyphicon glyphicon-step-backward" value="Next" onclick="getNextForm()"/>-->
							</div>
							
							<div class="btn" align="left" title="Go To Customer System" onclick="gethomepage()" >
							<i class="icon-home"></i>
							<!--  	<input type="button" class="glyphicon glyphicon-step-backward" value="Next" onclick="getNextForm()"/>-->
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="container-fluid panel-body">
				<div class="row-fluid search-align">
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">Persion Name</label>
							<div class="controls">
								<input type="text" class="form-control" name="cpersionname" id="cpersionname" placeholder="" onblur="checkcontackpersionexist()" required="required"/>
							</div>
						</div>
					  <div class="control-group">
							<label class="control-label">Mobile</label>
							<div class="controls">
								<input type="text" class="form-control" name="cpphno" placeholder=""  />
							</div>
						</div>
						<!--<div class="control-group">
							<label class="control-label">Email</label>
							<div class="controls">
								<input type="email" class="form-control" name="custEmail" placeholder="" />
							</div>
						</div>
						<div class="control-group">
							 <label class="control-label">GST Apply</label>
							<div class="controls">
								<input type="checkbox" name="custGst" value="YES"> 
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Excise Apply</label>
							<div class="controls">
								<input type="checkbox" name="custExcise" value="YES"> 
							</div>
						</div> -->
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
							<label class="control-label">Designation</label>
							<div class="controls">
								<input type="text" class="form-control" name="cpdesignation" placeholder="" required="required" />
							</div>
						</div>
						
						 
						<%--<div class="control-group">
							<label class="control-label">Select District</label>
							<div class="controls">
								<select class="form-control" name="districtName" id="districtName" onchange="getTalukaLst()">
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
								<input type="text" class="form-control"  name="custConatactNo" placeholder="" />
							</div>
						</div> 
						
						<div class="control-group">
							<label class="control-label">VAT</label>
							<div class="controls">
								<input type="checkbox" name="custVat" value="YES"> 
							</div>
						</div> 
						
						<div class="control-group">
							<label class="control-label">Service Tax Apply</label>
							<div class="controls">
								<input type="checkbox" value="YES" name="custServiceTax">  
							</div>
						</div> 
 --%>						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
						 <div class="control-group">
							<label class="control-label">Email</label>
							<div class="controls">
								<input type="text" class="form-control" name="cpmail" placeholder="" />
							</div>
						</div>
						
						<!--  <div class="control-group">
							<label class="control-label">Select State</label>
							<div class="controls">
								<select class="form-control" name="stateName" id="stateName" onchange="getDistrictLst()">
											<option></option>
											</select>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Taluka</label>
							<div class="controls">
									<select class="form-control" name="talukaName" id="talukaName">
											<option></option>
										</select>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Website URL</label>
							<div class="controls">
								<input type="text" class="form-control" name="custWebsite" placeholder="" />
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
								<input type="checkbox" name="custCst" value="YES" >
							</div>
						</div> -->
						
											
					</div>
				</div>
			</div>
		</div>
		</div>
	 </form> 
	 
	 <div class="panel panel-default" id="idresults">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span11" align="left"><!-- Project Task List --></div>
						<div class="span1" align="right">
							<!-- <div class="btn" onclick="deleteRowsChecked();" id="deletebtn" title="Delete selected">
								<i class="icon-trash"></i>
							</div> -->
						</div>
					</div>
				</div>
			</div>

			<div class="panel-body">
			
				<div class="singleline-records">
					<table id="idtable" class="table table-bordered insideform" id="idtable">
						<thead style="font-size: 12px;">
						<tr bgcolor="#84939f">
							<th>Sr.No</th>
							<th>Person Name</th>
							<th>Designation</th>
							<th>Mobile</th>
							<th>Email</th>
							<th>Action</th>
						</tr>
									</thead>
									<tbody style="font-size: 12px;">
										
											<c:if test="${not empty custconatctpeoplelst}">
												<% int i=1;
												%>
             		           					<c:forEach var="listValue" items="${custconatctpeoplelst}">
             		           					<%
             		           					if(i%2==1){
             		           						%>
             		           							<tr class="" bgcolor="white">
             		           						<%}else{ %>
             		           							<tr class="" bgcolor="#dfe4e6">
             		           							<%
             		           							}
             		           					i++;
             		           					%>
             		           						<td><%=i %></td>
             		           						<td>${listValue.cpersionname}</td>
             		           						<td>${listValue.cpdesignation}</td>
             		           						<td>${listValue.cpphno}</td>
             		           						<td>${listValue.cpmail}</td>
             		           						<td><input name="chk" id="chk" value="${listValue.cpersionname}" type="checkbox">
             		           						</td>
             		           						
             		           					
             		           					</tr>
												</c:forEach>
											</c:if>
										
									</tbody>
								</table>
								
								
								
				
				
	 
	</fieldset>
<script type="text/javascript">

function  gethomepage()
{
	  location.href="getSystems.html?moduleName=customer";
}



function checkcontackpersionexist() {
    // get the form values
   var custId = $('#custId').val();
	var contactPersionName=$('#contactPersionName').val();
    $.ajax({
    type: "POST",
    url: "checkcontactpersion.html",
    data: "custId=" + custId + "&cpersionname=" + cpersionname,
    success: function(data){
    	if(data=='"1"'){
   		 $('#idsuccess').hide();
			}
   else
   	{
   		 $('#cpersionname').val('');
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



function getNextForm()
{
	var custname=document.getElementById("custName").value;
	
	location.href="getCustAllDetail.html?custName="+custname;
}

function deleteRowsChecked() {
	var check1 = 0;
	var table = document.getElementById("idtable");
	var custName=document.getElementById("custName").value;
	
	for ( var rowi = table.rows.length; rowi--;) {
		var row = table.rows[rowi];
		var inputs = row.getElementsByTagName('input');
		for ( var inputi = inputs.length; inputi--;) {
			var input = inputs[inputi];
			if (input.type === 'checkbox' && input.checked) {
				check1 = 1;
			}
		}
	}

	if (check1 == 0) {
		$('#iderror').show();
		$('#idsuccess').hide();
	} else {
		var result = confirm("Are you sure you want to delete selected records?");
		if (result) {
			var table = document.getElementById("idtable");
			for ( var rowi = table.rows.length; rowi--;) {
				var row = table.rows[rowi];
				var inputs = row.getElementsByTagName('input');
				for ( var inputi = inputs.length; inputi--;) {
					var input = inputs[inputi];
					if (input.type === 'checkbox' && input.checked) {
						var cname = input.value;
						alert(cname);
						 $.ajax({
							url : "deletecustomercontactpeople.html",
							type : "GET",
						    data: "custName=" + custName + "&cname=" + cname,
							

							success : function(data) {
								var obj = JSON.parse(data.status);
							}
						}); 
						row.parentNode.removeChild(row);
					}
				}
			}
			$('#idsuccess').show();
			$('#iderror').hide();
		}
	}
}




function  gethomepage()
{
	  location.href="getSystems.html?moduleName=customer";
}
</script>
