<body onload="calculateTotalPamt()">
<fieldset class="fieldset-style">
<form role="form" action="saveQuotationProcess.html" method="post" name="fnm">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Create Quotation Step 3 (Add Item Process) 
						
							
							</div>
						<div class="span3" align="right">
							<!-- <button class="btn-save" title="Save" onclick="createUser();" id="btnsave"></button> -->
							<input type="button" class="btn-save" value="" id="btnsave" title="Save Item Process" onclick="checkformvalidation()"/>
							
							
							
							<div class="btn" onclick="deleteRowsChecked();" id="deletebtn" title="Remove selected Process">
								<i class="icon-trash"></i>
							</div>
							
							<div class="btn" align="right" title="Add Another Item" onclick="getNextForm()" >
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

<input type="hidden" value="${custName}" name="custName" id="custName">
								<input type="hidden" value="${itemCode}" name="itemCode" id="itemCode">
					
									<input type="hidden" value="${qNo}" name="qno" id="qno">
			<!--      Actual Form -->
			<div class="container-fluid panel-body">
				<div class="row-fluid search-align">
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">Quotation No</label>
							<div class="controls">
								${qNo}
							</div>
						</div>
						
						
						<div class="control-group">
							<label class="control-label">Select Process</label>
							<div class="controls">
								<select class="form-control" name="processName" id="processName" onchange="getOpeartionLs()">
								<option>Select Process</option>
									<c:if test="${not empty qprocesslist}">
             		           					<c:forEach var="processlist" items="${qprocesslist}">
             		           						<option value="${processlist}">${processlist}</option>
												</c:forEach>
											</c:if>
								</select>
							</div>
						</div>
						 <div class="control-group">
							<label class="control-label">Std Rate</label>
							<div class="controls">
								<input type="text" id="stdRate" name="stdRate" readonly="readonly"  class="form-control" placeholder="" />
							</div>
						</div>
						
						
						</div> 
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
					
					<div class="control-group">
								<label class="control-label">Customer Name</label>
								<div class="controls">${custName}</div>
							</div>
						<div class="control-group">
							<label class="control-label">Cust Time</label>
							<div class="controls">
								<input type="text" class="form-control" id="custTime" name="custTime" placeholder="" />
							</div>
						</div>

						 <div class="control-group">
							<label class="control-label">Process Amt</label>
							<div class="controls">
								<input type="text" id="processAmt" name="processAmt" readonly="readonly" class="form-control" placeholder="" />
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
							<label class="control-label">Time For Shope</label>
							<div class="controls">
								<input type="text" id="shopTime" name="shopTime" class="form-control" placeholder="" onblur="calculateAmt()"/>
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
						<table class="table table-bordered insideform" style="font-size: 12px;" name="qprocesstable" id="qprocesstable">
									<thead style="font-size: 12px;">
										<tr bgcolor="#84939f">
											<th>Sr No</th>
											<th>Process Name</th>
											<th>Custumer Time</th>
											<th>Time For Shope</th>
											<th>Std Rate</th>
											<th>Process Amt</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody style="font-size: 12px;">
										
											<c:if test="${not empty qpcocessDetaillst}">
												<% int i=1;
												%>
             		           					<c:forEach var="listValue" items="${qpcocessDetaillst}">
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
             		           						<td>${listValue.custTime}</td>
             		           						<td>${listValue.shopTime}</td>
             		           						<td>${listValue.stdRate}</td>
             		           						<td>${listValue.processAmt}</td>
             		           						<td><input name="chk" id="chk" value="${listValue.processName}" type="checkbox">
             		           						</td>	
             		           					
             		           					</tr>
												</c:forEach>
											</c:if>
											
									</tbody>
								</table>
								
								
								
				
				</div>
				
				</div>
			<div>	
	</div>
	
	
	  <div class="form-horizontal">
		<div class="panel panel-default">
			<!-- <div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Invoice Detail</div>
						
					</div>
				</div>
			</div> -->

			<div class="container-fluid panel-body">
				<div class="row-fluid search-align">
				
				
				<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">Total Process Amt</label>
							<div class="controls">
								<input type="text"  name="tpamt" id="tpamt" class="form-control" placeholder="" readonly="readonly" />
							</div>
						</div> 
					
						
						</div>
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">RM Amt</label>
							<div class="controls">
								<input type="text"  name="rmAmt" id="rmAmt" value="${rmAmt}"  class="form-control" placeholder="" readonly="readonly" />
							</div>
						</div> 
					
						
						</div>
						
						
						<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">Final Amt</label>
							<div class="controls">
								<input type="text"  name="itemAmt" id="itemAmt" class="form-control" placeholder="" readonly="readonly" />
							</div>
						</div> 
					
						
						</div>
						
					<!-- 2 Column -->	
					
					
						
						<!-- 3 Column -->
					
					
				</div>
				
			</div>
			
		</div>
		
	
	</div>
	</fieldset>

</body>


<script>



function calculateTotalPamt() 
{ 
		var sum=0;
		var oTable = document.getElementById("qprocesstable");
		 
		 var i;
		 
	     var rowLength = oTable.rows.length;
	     
	    
	    
		  for (i =1; i <rowLength; i++)
		  {
		      var oCells = oTable.rows.item(i).cells;
		      
		      sum=sum+parseFloat(oCells[5].firstChild.data);
		      
		     
		  }
		
		
		 document.getElementById("tpamt").value =sum;
		 document.getElementById("itemAmt").value=parseFloat(sum)+parseFloat(document.getElementById("rmAmt").value)
		
		
		
		  
}


$(document).ready(function(){
	$('#processName').change(function(event){
		var processName=document.getElementById("processName");
		var pname =processName.options[processName.selectedIndex].value;
		var custname=document.getElementById("custName").value;
		
  		$.getJSON('getCustomerProcessRate.html',{pname:pname,custname:custname}).done(function(json ) {
  		
  			
  			document.getElementById("stdRate").value=json[0].processRate;
  		
  	  })
.fail(function( jqxhr, textStatus, error ) {
alert("fail");
});
});
});



function calculateAmt()
{
	var amt=parseFloat(document.getElementById("shopTime").value)*parseFloat(document.getElementById("stdRate").value);
	document.getElementById("processAmt").value=amt;
	
}


function getNextForm()
{

	var qno=document.getElementById("qno").value;
	var itemCode=document.getElementById("itemCode").value;
	var custName=document.getElementById("custName").value;
	var itemAmt=document.getElementById("itemAmt").value;
	
	location.href="getQuotationForm4.html?qno="+qno+"&custName="+custName+"&itemAmt="+itemAmt+"&itemCode="+itemCode
}


function  gethomepage()
{
	  location.href="getSystems.html?moduleName=Quotation";
}


function deleteRowsChecked() {
	var check1 = 0;
	var table = document.getElementById("qprocesstable");
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
			var table = document.getElementById("qprocesstable");
			for ( var rowi = table.rows.length; rowi--;) {
				var row = table.rows[rowi];
				var inputs = row.getElementsByTagName('input');
				for ( var inputi = inputs.length; inputi--;) {
					var input = inputs[inputi];
					if (input.type === 'checkbox' && input.checked) {
						var processname = input.value;
						alert(processname);
						 $.ajax({
							url : "deletequotationitemprocess.html",
							type : "GET",
						    data: "qno=" + qno + "&itemcode=" + itemcode+ "&processname=" + processname,
							

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
	if($("#processName").val()=="")
	{
		alert("Select Process")
		flag=false;
	}
	if($("#stdRate").val()=="")
		{
			alert("Customer Process Rate Should not empty")
			flag=false;
		}
	
	if($("#custTime").val()=="")
	{
		alert("Customer Time Should not empty")
		flag=false;
	}
	

	if($("#rmAmt").val()=="")
	{
		alert("RM Amount Should not empty")
		flag=false;
	}
	
	

	if($("#tpamt").val()=="")
	{
		alert("Totall Process Amount Should not empty")
		flag=false;
	}
	
	if($("#shopTime").val()=="")
	{
		alert("Time Shop Should not empty")
		flag=false;
	}
	if(flag)
		{
			document.fnm.submit();
		}
	
}

</script>