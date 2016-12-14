<fieldset class="fieldset-style">
<div class="alert alert-success" id="idsuccess">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<i class="icon-thumbs-up"></i>Records added successfully!
		</div>
		<script type="text/javascript">
		$("#idsuccess").hide();
		</script>

	 
	 <div class="panel panel-default" id="idresults">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span11" align="left">D.Challan List<!-- Project Task List --></div>
						<div class="span1" align="right">
							<div class="span1" align="right">
								<div class="btn" title="Cancel" onclick="gethomepage();" id="btnclear">
								<i class="icon-home"></i>
							</div>
						</div>
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
							<th>D.Challan No</th>
							<th>D.Challan Date</th>
							<th>D.Challan Type</th>
							<th>D.Challan Status</th>
							<th Style="width:8%">Select</th>
						</tr>
									</thead>
									<tbody style="font-size: 12px;">
										
											<c:if test="${not empty lst}">
												<% int i=1;
												%>
             		           					<c:forEach var="listValue" items="${lst}">
             		           					<%
             		           					if(i%2==1){
             		           						%>
             		           							<tr class="" bgcolor="white">
             		           						<%}else{ %>
             		           							<tr class="" bgcolor="#dfe4e6">
             		           							<%
             		           							}%>
             		           					
             		           						<td><%=i%></td>
             		           						<td>${listValue.dchallanno}</td>
             		           						<td>${listValue.dchallandate}</td>
             		           						<td>${listValue.dchallantype}</td>
             		           						<td>${listValue.dchallanstatus}</td>
             		           						<td>
             		           						<a href="dchallandetail.html?dchallanno=${listValue.dchallanno}"><div class="btn"><i class="icon-edit"></i></div></a></td>
             		           						
             		           					<%i++;
             		           					%>
             		           					</tr>
												</c:forEach>
											</c:if>
										
									</tbody>
								</table>
								
								
								
				
				</div>
						
	 
	</fieldset>
	
	<script  type="text/javascript">
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
							var custName = input.value;
							alert(custName);
							 $.ajax({
								url : "deactivatecustomer.html",
								type : "GET",
								data : 'custName=' + custName,
								

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
