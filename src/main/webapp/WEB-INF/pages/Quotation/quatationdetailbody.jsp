<fieldset class="fieldset-style">
<form role="form" action="getQuotationDetail.html">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Search Quotation </div>
						<div class="span3" align="right">
							<!-- <input type="submit" class="icon-search" value="" id="btnsave" /> -->
							<button type="button" class="btn" title="Get Customer Quotation No" onclick="getcustqnoLst()">
  								<i class="icon-search"></i>
							</button>
							<button type="submit" class="btn" title="Get Quotation Detail" onclick="getcustqnoLst()">
  								<i class="icon-search"></i>
							</button>
							
							<div class="btn" align="left" title="Quotation Home" onclick="priview()" >
							<i class="icon-print"></i>
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

			<div class="container-fluid panel-body">
				<div class="row-fluid search-align">
					<div class="firstquad">
						
						<div class="control-group">
								<label class="control-label">Customer Name</label>
								<div class="controls"><input type="text" class="form-control" name="searchcustName" id="searchcustName" placeholder=""  /></div>
							</div>
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						
						<div class="controls">
								<select name="searchqno" id="searchqno" onchange="assignqno()">
								
								</select>
							</div>
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
							<div class="control-group">
								<label class="control-label">Quotation No</label>
								<div class="controls"><input type="text" class="form-control" name="qno" id="qno" value="${qno}" readonly="readonly" /></div>
							</div>	
											
					</div>
				</div>
			</div>
		</div>
		</div>
	 </form> 
	 
	 
	 <!-- //2 Pannel -->
	 
	 <div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Quotation Detail</div>
						
					</div>
				</div>
			</div>

			<div class="container-fluid panel-body">
				<div class="row-fluid search-align">
					<div class="firstquad">
						<div class="control-group">
							<label class="control-label">Customer Name</label>
							<div class="controls">
								<input type="text" value="${quotationdetaillobj.custName}" id="custName" name="custName" class="form-control" placeholder="" readonly="readonly"/>
							</div>
						</div>
						
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">Quotation Status</label>
							<div class="controls">
								<input type="text"  value="${quotationdetaillobj.status}" class="form-control" placeholder="" readonly="readonly"/>
							</div>
						</div>
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
								<div class="control-group">
							<label class="control-label">Created Date</label>
							<div class="controls">
								<input type="text" value="${quotationdetaillobj.qdate}"  class="form-control" placeholder="" readonly="readonly" />
							</div>
						</div>
											
					</div>
				</div>
			</div>
		</div>
		</div>
		
		
		<!-- 3 pannel -->
		
		  <div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Item Detail</div>
						<div class="span2" align="right">
						
							
							<div class="btn" align="left" title="Add Item" onclick="getitemaddform()" >
							<i class="icon-plus-sign"></i>
							<!--  	<input type="button" class="glyphicon glyphicon-step-backward" value="Next" onclick="getNextForm()"/>-->
							</div>
							
							<div class="btn" align="left" title="Remove Selected Item" onclick="deleteitemChecked()" >
							<i class="icon-trash"></i>
							<!--  	<input type="button" class="glyphicon glyphicon-step-backward" value="Next" onclick="getNextForm()"/>-->
							</div>
							</div>
					</div>
				</div>
			</div>
			<div class="panel-body">
				<div class="singleline-records">
						<table class="table table-bordered insideform" style="font-size: 12px;" id="quotationitemdetail">
									<thead style="font-size: 12px;">
										<tr bgcolor="#84939f">
											<th>Item Code</th>
											<th>Item Description</th>
											<th>RM Grade</th>
											<th>RM Shape</th>
											<th>RM Dimension</th>
											<th>RM Weight</th>
											<th>RM Range</th>
											<th>Supplier</th>
											<th>RM Rate</th>
											<th>RM Amt</th>
											<th>Item Price</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody style="font-size: 12px;">
										
											<c:if test="${not empty quotationitemdetail}">
												<% int i=1;
												%>
             		           					<c:forEach var="listValue" items="${quotationitemdetail}">
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
             		           						<td>${listValue.itemCode}</td>
             		           						<td>${listValue.itemDescription}</td>
             		           						<td>${listValue.rmGrade}</td>
             		           						<td>${listValue.rmshape}</td>
             		           						<td>${listValue.shapeDimension}</td>
             		           						<td>${listValue.rmWeight}</td>
             		           						<td>${listValue.rmSizeRange}</td>
             		           						<td>${listValue.supplierName}</td>
             		           						<td>${listValue.supplierRate}</td>
             		           						<td>${listValue.rmAmt}</td>
             		           						<td>${listValue.itemPrice}</td>
             		           						<td><input name="chk" id="chk" value="${listValue.itemCode}" type="checkbox"></td>
             		           					
             		           					</tr>
												</c:forEach>
											</c:if>
										
									</tbody>
								</table>
				</div>
				</div>
		</div>
		</div>
		
		
		<!-- 4 pannel -->
		
		 <div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Operation Detail</div>
						<div class="span2" align="right">
						
						<div class="btn" align="left" title="Add Operations" onclick="getOperationaddform()" >
							<i class="icon-plus-sign"></i>
							<!--  	<input type="button" class="glyphicon glyphicon-step-backward" value="Next" onclick="getNextForm()"/>-->
							</div>
							
						<div class="btn" align="left" title="Edit Selected Item Operations" onclick="deleteRowsChecked()" >
							<i class="icon-edit"></i>
							<!--  	<input type="button" class="glyphicon glyphicon-step-backward" value="Next" onclick="getNextForm()"/>-->
							</div>
							</div>
					</div>
				</div>
			</div>
			<div class="panel-body">
				<div class="singleline-records">
						<table class="table table-bordered insideform" style="font-size: 12px;" id="qoperationdetailtable">
									<thead style="font-size: 12px;">
										<tr bgcolor="#84939f">
											<th>Item Code</th>
											<th>Process Name</th>
											<th>Operation Name</th>
											<th>Process Dimension</th>
											<th>Tolerance</th>
											<th>Tools</th>
											<th>Instrument</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody style="font-size: 12px;">
										
											<c:if test="${not empty quotationoperationDetaillst}">
												<% int i=1;
												%>
             		           					<c:forEach var="listValue" items="${quotationoperationDetaillst}">
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
             		           							<td>${listValue.itemCode}</td>
             		           						<td>${listValue.processName}</td>
             		           						<td>${listValue.operationName}</td>
             		           						<td>${listValue.parameter}</td>
             		           						<td>${listValue.tolerance}</td>
             		           						<td>${listValue.toolName}</td>
             		           						<td>${listValue.instrumentName}</td>
             		           						<td><input name="chk" id="chk" value="${listValue.itemCode}" type="checkbox"></td>
             		           					
             		           					</tr>
												</c:forEach>
											</c:if>
										
									</tbody>
								</table>
				</div>
				</div>
		</div>
		</div>
		
		
			<!-- 5 pannel -->
		
		 <div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Process Detail</div>
						<div class="span2" align="right">
						<div class="btn" align="left" title="Add Process" onclick="getProcessaddform()" >
							<i class="icon-plus-sign"></i>
							<!--  	<input type="button" class="glyphicon glyphicon-step-backward" value="Next" onclick="getNextForm()"/>-->
							</div>
						<div class="btn" align="left" title="Edit Selected Item Process" onclick="editQuotationItemProcess()" >
							<i class="icon-edit"></i>
							<!--  	<input type="button" class="glyphicon glyphicon-step-backward" value="Next" onclick="getNextForm()"/>-->
							</div>
							
							</div>
					</div>
				</div>
			</div>
			<div class="panel-body">
				<div class="singleline-records">
						<table class="table table-bordered insideform" style="font-size: 12px;" id="processdetailtable">
									<thead style="font-size: 12px;">
										<tr bgcolor="#84939f">
											<th>Item Code</th>
											<th>Process Name</th>
											<th>Customer Time</th>
											<th>Shop Timing</th>
											<th>Std Rate</th>
											<th>Process Amt</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody style="font-size: 12px;">
										
											<c:if test="${not empty quotationprocessDetaillst}">
												<% int i=1;
												%>
             		           					<c:forEach var="listValue" items="${quotationprocessDetaillst}">
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
             		           						<td>${listValue.itemCode}</td>
             		           						<td>${listValue.processName}</td>
             		           						<td>${listValue.custTime}</td>
             		           						<td>${listValue.shopTime}</td>
             		           						<td>${listValue.stdRate}</td>
             		           						<td>${listValue.processAmt}</td>
             		           						<td><input name="chk" id="chk" value="${listValue.itemCode}" type="checkbox"></td>
             		           					</tr>
												</c:forEach>
											</c:if>
										
									</tbody>
								</table>
				</div>
				</div>
		</div>
		</div>
		
		<div class="panel-body">
				<div class="singleline-records">
					<a href="downloadExcel.html?qno=${qno}">Download Excel</a>&nbsp;&nbsp;
				
				</div>
				
				
		</div>
		
	 
	</fieldset>
	
	
	<script>
	

	$(document).ready(function() {
	    $(function() {
	    	
	            $("#searchcustName").autocomplete({     
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

	                        } });
	    }
	});
	});
	});
	
	
	
	function getcustqnoLst()
	{
	
		var custName=document.getElementById("searchcustName").value;
		
				var custqnoList;
				jQuery.ajax({
			 	 url: "getJsoncustqnoList.html?custName="+custName,
 				 type: "POST",
	
			  	dataType: "json",
				async: false,
  				success: function (data) {
  					custqnoList = data
  					
      					$('#searchqno').empty();
  					   	$('#searchqno').append('<option value="">Select Quotation No</option>');
     					 for (i in custqnoList) {
   		
       			   $('#searchqno').append('<option value="' + custqnoList[i].qNo + '">' +custqnoList[i].qNo + '</option>');
      				}
 			 		}
		
					});
		
	}
	
	
		function priview()
		{
			var qno=document.getElementById("qno").value;
			location.href="getcustquotationjasper.html?qno="+qno
		}
		
		
		
		function deleteRowsChecked() {
			var check1 = 0;
			var table = document.getElementById("qoperationdetailtable");
			var custName=document.getElementById("custName").value;
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
				var result = confirm("Are you sure you want to Edit selected records?");
				if (result) {
					var table = document.getElementById("qoperationdetailtable");
					for ( var rowi = table.rows.length; rowi--;) {
						var row = table.rows[rowi];
						var inputs = row.getElementsByTagName('input');
						for ( var inputi = inputs.length; inputi--;) {
							var input = inputs[inputi];
							if (input.type === 'checkbox' && input.checked) {
								var itemCode = input.value;
								alert(itemCode);
								location.href="getQuotationOperationEditForm.html?qno="+qno+"&itemcode="+itemCode+"&custName="+custName						}
						}
					}
					$('#idsuccess').show();
					$('#iderror').hide();
				}
			}
		}
	
	function editQuotationItemProcess()
	{
		var check1 = 0;
		var table = document.getElementById("processdetailtable");
		var custName=document.getElementById("custName").value;
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
			var result = confirm("Are you sure you want to Edit selected records?");
			if (result) {
				var table = document.getElementById("processdetailtable");
				for ( var rowi = table.rows.length; rowi--;) {
					var row = table.rows[rowi];
					var inputs = row.getElementsByTagName('input');
					for ( var inputi = inputs.length; inputi--;) {
						var input = inputs[inputi];
						if (input.type === 'checkbox' && input.checked) {
							var itemCode = input.value;
							alert(itemCode);
							var rmrate=getImtecodeRMRate(itemCode);
							
							location.href="getQuotationProcessEditForm.html?qno="+qno+"&itemcode="+itemCode+"&custName="+custName+"&rmrate="+rmrate				
									}
					}
				}
				$('#idsuccess').show();
				$('#iderror').hide();
			}
		}
	
	}
	
	
	function getImtecodeRMRate(itemCode)
	{
		
		var oTable = document.getElementById("quotationitemdetail");
		 
		 var i;
		 var rmrate;
	     var rowLength = oTable.rows.length;
	     
	    
	    
		  for (i =1; i <rowLength; i++)
		  {
		      var oCells = oTable.rows.item(i).cells;
		      if((oCells[0].firstChild.data)==itemCode)
		    	  {
		    	  		rmrate=(oCells[9].firstChild.data);
		    	  		break;
		    	  }
		      
		     // sum=sum+parseFloat(oCells[7].firstChild.data);
		      
		     
		  }
		
		return rmrate;
		
	}
	
	
	function deleteitemChecked()
	{
		var check1 = 0;
		var table = document.getElementById("quotationitemdetail");
		
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
			var result = confirm("Are you sure you want to Delete selected records?");
			if (result) {
				var table = document.getElementById("quotationitemdetail");
				for ( var rowi = table.rows.length; rowi--;) {
					var row = table.rows[rowi];
					var inputs = row.getElementsByTagName('input');
					for ( var inputi = inputs.length; inputi--;) {
						var input = inputs[inputi];
						if (input.type === 'checkbox' && input.checked) {
							var itemCode = input.value;
							alert(itemCode);
							var rmrate=getImtecodeRMRate(itemCode);
							
							location.href="deletequotationitem.html?qno="+qno+"&itemcode="+itemCode				
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
		  location.href="getSystems.html?moduleName=Quotation";
	  }
	  
	  
	  function assignqno()
	  {
		  var qno=$('#searchqno').val();
		  $('#qno').val(qno)
	  }
	  function getOperationaddform()
	  {
		  var custName=document.getElementById("custName").value;
		
		  var qno=$('#qno').val();
		
			
		  location.href="qoperationinputRequest.html?custName="+custName+"&qNo="+qno;
	  }
	  
	 function getProcessaddform()
	 {
		 var custName=document.getElementById("custName").value;
			
		  var qno=$('#qno').val();
		
			
		  location.href="qprocessinputRequest.html?custName="+custName+"&qNo="+qno;
		 
	 }
	 
	 
	 function getitemaddform()
	 {
		 var qno=document.getElementById("qno").value;
		
			var custName=document.getElementById("custName").value;
		
			
			location.href="getQuotationItemAddForm.html?qno="+qno+"&custName="+custName
	 }
	
	</script>
