<fieldset class="fieldset-style">

<form role="form" action="">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Raw Material Stock </div>
						<div class="span3" align="right">
							<!-- <input type="submit" class="icon-search" value="" id="btnsave" /> -->
						
						
							<div class="btn" onclick="addItemStock()"  title="Add Stock">
								<i class="icon-plus-sign"></i>
							</div>
							
							<div class="btn" onclick="deleteRowsChecked();" id="deletebtn" title="Delete selected Operation">
								<i class="icon-trash"></i>
							</div>
							<div class="btn" align="left" title="Production And Planning Home" onclick="gethomepage()" >
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
						
						
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						
						<div class="controls">
								
							</div>
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
							<div class="control-group">
								<label class="control-label">Item Code</label>
								<div class="controls"><input type="text" class="form-control" name="processName" id="processName" value="${pname}"  /></div>
								
							</div>	
											
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
						<div class="span9" align="left">Stock Detail<!-- Project Task List --></div>
						<div class="span3" align="right">
						
							
							
						
						</div>
					</div>
				</div>
			</div>

			<div class="panel-body">
			
				<div class="singleline-records">
					<table id="idtable" class="table table-bordered insideform">
						<thead style="font-size: 12px;">
						<tr bgcolor="#84939f">
							<th Style="width:5%">Sr.No</th>
							<th>Customer Name</th>
							<th>item Code</th>
							<th >Stock Qty</th>
							<th >Item Loc </th>
							
						
						</tr>
									</thead>
									<tbody style="font-size: 12px;">
										
											<c:if test="${not empty allstocklst}">
												<% int i=0;
												%>
             		           					<c:forEach var="listValue" items="${allstocklst}">
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
             		           						<td>${listValue.custName}</td>
             		           						<td>${listValue.itemCode}</td>
             		           						<td>${listValue.stockQty}</td>
             		           						<td>${listValue.itemLoc}</td>
             		           						
             		           					</tr>
												</c:forEach>
											</c:if>
										
									</tbody>
								</table>
								
								
								
				
				</div>
						
	 
	</fieldset>
	
	<script  type="text/javascript">
	
		$("#deletebtn").hide();
		showhidefield();
	
		
	function deleteRowsChecked() {
		showhidefield()
		var check1 = 0;
		var table = document.getElementById("idtable");
		var processName= $('#processName').val()
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
							var operationName = input.value;
							alert(operationName);
							 $.ajax({
								url : "ppdeleteoperation.html",
								type : "GET",
								data : 'processName=' + processName+"&operationName="+operationName,
								

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
	
	
	function addItemStock()
	{
		location.href="additemstockRequest.html"
	}
	
	
	 function assignpname()
	  {
		  var pname=$('#pname').val();
		  $('#processName').val(pname)
	  }
	 
	 function getProcessLstByProcess()
	 {
		 var pname=$('#pname').val();
		var processName= $('#processName').val()
		location.href="../ProductionErp/ppgetoperationlstprocessby.html?processName="+processName;
		 
	 }
	 
	 
	 function getAllOperationLst()
	 {
		 
		location.href="../ProductionErp/ppgetoperationlstRequest.html"
	 }
	 
	 function showhidefield()
	 {
		 if($('#processName').val()!="")
			 {
			 $("#deletebtn").show();
			 }
		 
	 }
	 
	 function  gethomepage()
	 {
	 	  location.href="getSystems.html?moduleName=pp";
	 }

	</script>
