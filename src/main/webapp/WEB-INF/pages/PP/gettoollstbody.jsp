<fieldset class="fieldset-style">
<div class="alert alert-success" id="idsuccess">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<i class="icon-thumbs-up"></i>Deleted successfully!
		</div>
		<script type="text/javascript">
		$("#idsuccess").hide();
		</script>

	 
	 <div class="panel panel-default" id="idresults">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Tools List<!-- Project Task List --></div>
						<div class="span3" align="right">
							<div class="btn" onclick="addTools()"  title="Add Instrument">
								<i class="icon-plus-sign"></i>
							</div>
							<div class="btn" onclick="deleteRowsChecked();" id="deletebtn" title="Delete selected">
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

			<div class="panel-body">
			
				<div class="singleline-records">
					<table id="idtable" class="table table-bordered insideform">
						<thead style="font-size: 12px;">
						<tr bgcolor="#84939f">
							<th Style="width:5%">Sr.No</th>
							<th>Tool Name</th>
							<th>Action</th>
						
						</tr>
									</thead>
									<tbody style="font-size: 12px;">
										
											<c:if test="${not empty toolst}">
												<% int i=1;
												%>
             		           					<c:forEach var="listValue" items="${toolst}">
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
             		           						<td>${listValue.toolName}</td>
             		           						<td ><input name="chk" id="chk" value="${listValue.toolName}" type="checkbox">
             		           						</td>
             		           					
             		           					
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
							var toolName = input.value;
							alert(toolName);
							 $.ajax({
								url : "deletetool.html",
								type : "GET",
								data : 'toolName=' + toolName,
								

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
	
	
	function addTools()
	{
		location.href="../ProductionErp/pptoolsinputRequest.html"	
	}
	
	function  gethomepage()
	{
		  location.href="getSystems.html?moduleName=pp";
	}
	</script>
