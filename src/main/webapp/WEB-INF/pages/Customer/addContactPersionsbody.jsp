<fieldset class="fieldset-style">
<div class="alert alert-success" id="idsuccess">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<i class="icon-thumbs-up"></i>Record  Delete Successfully 
		</div>
		<div class="alert alert-success" id="idsuccess1">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<i class="icon-thumbs-up"></i> Details Added
		</div>
		<div class="alert alert-success" id="idsuccess2">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<i class="icon-thumbs-up"></i>
		</div>
				
		<script type="text/javascript">
		$("#idsuccess").hide();
	
		$("#idsuccess1").show();		
		$("#idsuccess2").hide();
		</script>
<form action="addCustomerContactPersions.html" method="post">
<input type="hidden" name="custId"  id="custId" value="${custId}">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Add Customer Contact People
							
						</div>
						<div class="span3" align="right">
							<input type="submit" class="btn-save" value="" id="btnsave" title="Add Filled Data" />
							<div class="btn" onclick="deleteRowsChecked();" id="deletebtn" title="Delete selected Contact Persion">
								<i class="icon-trash"></i>
							</div>
							
							<div class="btn" align="right"  onclick="getNextForm()"title="Go To Add Document " >
							<i class="icon-forward"></i>
							<!--  	<input type="button" class="glyphicon glyphicon-step-backward" value="Next" onclick="getNextForm()"/>-->
							</div>
							
							<div class="btn" align="left" title="Go To Customer Systems" onclick="gethomepage()" >
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
							<label class="control-label">Person Name</label>
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
							<label class="control-label">Email</label>
							<div class="controls">
								<input type="text" class="form-control" name="cpmail" placeholder="" />
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
							<label class="control-label">Designation</label>
							<div class="controls">
								<input type="text" class="form-control" name="cpdesignation" placeholder="" required="required" />
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
             		           						<td><%=i%></td>
             		           						<td>${listValue.cpersionname}</td>
             		           						<td>${listValue.cpdesignation}</td>
             		           						<td>${listValue.cpphno}</td>
             		           						<td>${listValue.cpmail}</td>
             		           						<td><input name="chk" id="chk" value="${listValue.contactPesrsionId}" type="checkbox">
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
	var cpersionname=$('#cpersionname').val();
    $.ajax({
    type: "POST",
    url: "checkcontactpersion.html",
    data: "custId=" + custId + "&cpersionname=" + cpersionname,
    success: function(data){
    	if(data=='"1"'){
   		 $('#idsuccess').hide();
		 $("#idsuccess1").hide();
		 $("#idsuccess2").hide();
			}
   else
   	{
   		 $('#contactPersionName').val('');
   	   $('#idsuccess2').show();
   	
   	
   //$("#idsuccess").show();
   $("#idsuccess2").html("<button type='button' class='close' data-dismiss='alert' onclick='hide();'>&times;</button><i class='icon-thumbs-up'></i>"+
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
	var custId=document.getElementById("custId").value;

	location.href="addDocumets.html?custId="+custId
}

function deleteRowsChecked() {
	var check1 = 0;
	var table = document.getElementById("idtable");

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
		$("#idsuccess1").hide();
		$("#idsuccess2").hide();
	} else {
		var result = confirm("Are You Sure You Want To Delete Selected Records?");
		if (result) {
			var table = document.getElementById("idtable");
			for ( var rowi = table.rows.length; rowi--;) {
				var row = table.rows[rowi];
				var inputs = row.getElementsByTagName('input');
				for ( var inputi = inputs.length; inputi--;) {
					var input = inputs[inputi];
					if (input.type === 'checkbox' && input.checked) {
						var cnpersionid = input.value;
						
						 $.ajax({
							url : "deletecustomercontactpeople.html",
							type : "GET",
						    data: "cnpersionid=" + cnpersionid,
							

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

</script>
