<fieldset class="fieldset-style">
<div class="alert alert-success" id="idsuccess">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<i class="icon-thumbs-up"></i>
		</div>
		<script type="text/javascript">
		$("#idsuccess").hide();
		</script>
<form role="form" action="addCustomerRegisterNo.html" method="post"  enctype="multipart/form-data">
<input type="hidden" name="custId" id="custId" value="${custId}">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Registration Number
						
						</div>
						<div class="span2" align="right">
							<input type="submit" class="btn-save" value="" id="btnsave" title="Save Filled Data"/>
							<div class="btn" onclick="deleteRowsChecked();" id="deletebtn" title="Delete selected Document">
								<i class="icon-trash"></i>
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
							<label class="control-label">Document</label>
							<div class="controls">
								<select class="form-control" name="docname" id="docname" onchange="checkdocumentnumberexist()">
									<option>Select</option>
										<c:if test="${not empty documentNamelst}">
											
             		           					<c:forEach var="listValue" items="${documentNamelst}">
             		           						<option value="${listValue.key}">${listValue.value}</option>
												</c:forEach>
											</c:if>
									
								</select>
							</div>
						</div>
				
						<div class="control-group">
							<label class="control-label">Upload </label>
							<div class="controls">
							<input type="file" name="file">
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
							<label class="control-label">W.E.F.</label>
							<div class="controls">
								<input type="text" class="form-control" name="wef" placeholder="" />
							</div>
						</div>
						  <div class="control-group">
							<label class="control-label">Display On Print</label>
							<div class="controls">
								<select class="form-control" name="pvisible">
									<option>Select</option>
									<option value="yes">YES</option>
									<option value="yes">NO</option>
									
								</select>
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
							<label class="control-label">Number</label>
							<div class="controls">
								<input type="text" class="form-control" name="docno" placeholder="" required="required"/>
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
					<table id="idtable" class="table table-bordered insideform">
						<thead style="font-size: 12px;">
						<tr bgcolor="#84939f">
							<th>Sr.No</th>
							<th>Particular</th>
							
							<th>Number</th>
							<th>w.e.f</th>
							<th>Action</th>
						</tr>
									</thead>
									<tbody style="font-size: 12px;">
										
											<c:if test="${not empty custdoclst}">
												<% int i=1;
												%>
             		           					<c:forEach var="listValue" items="${custdoclst}">
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
             		           						<td>${listValue.docname}</td>
             		           						<td>${listValue.docno}</td>
             		           						<td>${listValue.wef}</td>
             		           						<td><input name="chk" id="chk" value="${listValue.custDocId}" type="checkbox">
             		           						</td>
             		           					
             		           					</tr>
												</c:forEach>
											</c:if>
										
									</tbody>
								</table>
								
								
								
				
				</div>
								
	 
	</fieldset>
<script type="text/javascript">




function checkdocumentnumberexist() {
    // get the form values
   var custId = $('#custId').val();
	var docname=$('#docname').val();
    $.ajax({
    type: "POST",
    url: "checkdocumentexist.html",
    data: "custId=" + custId + "&docname=" + docname,
    success: function(data){
    	if(data=='"1"'){
      		 $('#idsuccess').hide();
   			}
      else
      	{
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
						var custDocId = input.value;
						
						 $.ajax({
							url : "deletecustomerdocument.html",
							type : "GET",
						    data: "custDocId=" + custDocId,
							

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