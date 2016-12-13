
<fieldset class="fieldset-style">
<form role="form" action="saveQuotationOperation.html" method="post" name="fnm">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Create Quotation Step 2 (Item Operations) 
						
						</div>
						<div class="span3" align="right">
							<!-- <button class="btn-save" title="Save" onclick="createUser();" id="btnsave"></button> -->
							<input type="button" class="btn-save" value="" id="btnsave" title="Save Item Operation" onclick="checkformvalidation()" />
								
							<!-- <button class="btn-save" title="Save" type="submit"></button> -->
							<!-- <div class="btn" title="Cancel" onclick="clearForm();" id="btnclear">
								<i class="icon-trash"></i>
							</div> -->
							
							<div class="btn" onclick="deleteRowsChecked();" id="deletebtn" title="Remove selected Operation">
								<i class="icon-trash"></i>
							</div>
							
							<div class="btn" align="right" title="Add Item Process" onclick="getNextForm()" >
							<i class="icon-forward"></i>
							<!--  	<input type="button" class="glyphicon glyphicon-step-backward" value="Next" onclick="getNextForm()"/>-->
							</div>
							
							<div class="btn" align="left" title="Quotation Home" onclick="gethomepage()" >
							<i class="icon-home"></i>
							<!--  	<input type="button" class="glyphicon glyphicon-step-backward" value="Next" onclick="getNextForm()"/>-->
							</div>
							
							
						</div>
					</div>
				</div>
			</div>
<div>


							
							
							
							<input type="hidden" value="${qNo}" name="qno" id="qno">
								<input type="hidden" value="${custName}" name="custName" id="custName">
								<input type="hidden" value="${itemCode}" name="itemCode" id="itemCode">
								<input type="hidden" id="rmAmt" name="rmAmt" value="${rmAmt}"/>

			<!--      Actual Form -->
			<div class="container-fluid panel-body">
				<div class="row-fluid search-align">
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">Quotation NO.</label>
							<div class="controls">
								${qNo}
							</div>
						</div>
						
						
						<div class="control-group">
							<label class="control-label">Select Process</label>
							<div class="controls">
								<select class="form-control" name="processName" id="processName" onchange="getOpeartionLst()">
								<option value="select">Select Process</option>
									<c:if test="${not empty processlist}">
             		           					<c:forEach var="processlist" items="${processlist}">
             		           						<option value="${processlist}">${processlist}</option>
												</c:forEach>
											</c:if>
								</select>
							</div>
						</div>
						 <div class="control-group">
							<label class="control-label">Tolarance</label>
							<div class="controls">
								<input type="text" class="form-control" id="tolerance"name="tolerance" placeholder="" />
							</div>
						</div>
						
						</div> 
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
					
					<div class="control-group">
								<label class="control-label">Cust Name</label>
								<div class="controls">${custName}</div>
							</div>
						<div class="control-group">
							<label class="control-label">Operation</label>
							<div class="controls">
								<select class="form-control" name="operationName" id="operationName">
										</select>
							</div>
						</div>

						 <div class="control-group">
							<label class="control-label">Tools</label>
							<div class="controls">
								<select class="form-control" name="toolName" id="toolName">
									<option value="select">-Select--</option>
										<c:if test="${not empty toolnamlst}">
             		           					<c:forEach var="listValue" items="${toolnamlst}">
             		           						<option value="${listValue}">${listValue}</option>
												</c:forEach>
											</c:if>
								</select>
							</div>
						</div>
						
												</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
						
						<div class="control-group">
								<label class="control-label">Item Code</label>
								<div class="controls">
									${itemCode}
								</div>
							</div>
							<div class="control-group">
							<label class="control-label">Process Dim</label>
							<div class="controls">
								<input type="text" class="form-control" id="parameter" name="parameter" placeholder="" />
							</div>
						</div>
									
									
									<div class="control-group">
							<label class="control-label">Instrument</label>
							<div class="controls">
								<select class="form-control" name="instrumentName" id="instrumentName" >
									<option value="select">-Select--</option>
										<c:if test="${not empty intrumentlst}">
             		           					<c:forEach var="listValue" items="${intrumentlst}">
             		           						<option value="${listValue}">${listValue}</option>
												</c:forEach>
											</c:if>
								</select>
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
						<div class="span11" align="left">Details </div>
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
						<table class="table table-bordered insideform" style="font-size: 12px;" id="idtable">
									<thead style="font-size: 12px;">
										<tr bgcolor="#84939f">
											<th>Sr No</th>
											<th>Process Name</th>
											<th>Opearation</th>
											<th>Process Dime/Parameter</th>
											<th>Tolarance</th>
											<th>Tools</th>
											<th>Instrument</th>
											<th>Action</th>
									
										</tr>
									</thead>
									<tbody style="font-size: 12px;">
										
											<c:if test="${not empty qopereationlst}">
												<% int i=1;
												%>
             		           					<c:forEach var="listValue" items="${qopereationlst}">
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
             		           						<td>${listValue.srno}</td>
             		           						<td>${listValue.processName}</td>
             		           						<td>${listValue.operationName}</td>
             		           						<td>${listValue.parameter}</td>
             		           						<td>${listValue.tolerance}</td>
             		           						<td>${listValue.toolName}</td>
             		           						<td>${listValue.instrumentName}</td>
             		           						<td><input name="chk" id="chk" value="${listValue.operationName}" type="checkbox">
             		           						</td>
             		           					
             		           					</tr>
												</c:forEach>
											</c:if>
										
									</tbody>
								</table>
								
								
								
				
				</div>
				
				</div>
	
	
	</div>
	</fieldset>

<script>

function getOpeartionLst()
	{
	
		var processName=document.getElementById("processName");
		var name = processName.options[processName.selectedIndex].value;
		
		
				var operationList;
				jQuery.ajax({
			 	 url: "getJsonOperationList.html?name="+name,
 				 type: "POST",
	
			  	dataType: "json",
				async: false,
  				success: function (data) {
  					operationList = data
  					
      					$('#operationName').empty();
  					   	$('#operationName').append('<option value="">Select Operation</option>');
     					 for (i in operationList) {
   		
       			   $('#operationName').append('<option value="' + operationList[i].operationName + '">' +operationList[i].operationName + '</option>');
      				}
 			 		}
		
					});
		
	}
	
	
	function getNextForm()
	{
	
		var qno=document.getElementById("qno").value;
		var custName=document.getElementById("custName").value;
		var itemCode=document.getElementById("itemCode").value;
		var rmAmt=document.getElementById("rmAmt").value;
		location.href="getQuotationProcessForm.html?qno="+qno+"&custName="+custName+"&itemCode="+itemCode+"&rmAmt="+rmAmt
	}
	
	  function  gethomepage()
	  {
		  location.href="getSystems.html?moduleName=Quotation";
	  }
	
	
	function deleteRowsChecked() {
		var check1 = 0;
		var table = document.getElementById("idtable");
		var itemcode=document.getElementById("itemCode").value;
		var qno=document.getElementById("qno").value;
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
							var operationname = input.value;
							alert(operationname);
							 $.ajax({
								url : "deletequotationitemoperation.html",
								type : "GET",
							    data: "qno=" + qno + "&itemcode=" + itemcode+ "&operationname=" + operationname,
								

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

	
	
	function checkformvalidation()
	{
		var flag=true;
		if($("#processName").val()==""||$("#processName").val()=="select")
			{
				alert("Select Process")
				flag=false;
			}
		
		if($("#toolName").val()==""||$("#toolName").val()=="select")
		{
			alert("Select Tools")
			flag=false;
		}
		if($("#instrumentName").val()==""||$("#instrumentName").val()=="select")
		{
			alert("Select Instruments")
			flag=false;
		}
		if($("#operationName").val()==""||$("#operationName").val()=="select")
		{
			alert("Select Operation")
			flag=false;
		}
		if($("#tolerance").val()=="")
		{
			alert("Tolerance should not empty")
			flag=false;
		}
		
		if($("#parameter").val()=="")
		{
			alert("Process Dim should not empty")
			flag=false;
		}
		if(flag)
			{
				document.fnm.submit();
			}
		
	}

</script>
