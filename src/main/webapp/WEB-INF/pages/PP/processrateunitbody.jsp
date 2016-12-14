<fieldset class="fieldset-style">

<form role="form" action="addProcessUnit.html">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Process Rate Unit </div>
						<div class="span3" align="right">
							<input type="submit" class="btn-save" value="" id="btnsave" title="Save Unit" /> 
						
							<div class="btn" onclick="deleteRowsChecked()"  title="Delete Selected Unit">
								<i class="icon-trash"></i>
							</div>
							
							<div class="btn" align="left" title="Unit List" onclick="getProcessUnitLst()" >
							<i class="icon-list-alt"></i>
							<!--  	<input type="button" class="glyphicon glyphicon-step-backward" value="Next" onclick="getNextForm()"/>-->
							</div>
							
							
							<div class="btn" align="right" title="Go To Adding Standres Process Rate" onclick="getNextForm()" >
							<i class="icon-forward"></i>
							<!--  	<input type="button" class="glyphicon glyphicon-step-backward" value="Next" onclick="getNextForm()"/>-->
							</div>
							
						
							<div class="btn" align="left" title="Customer Home" onclick="gethomepage()" >
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
								<label class="control-label">Unit Name</label>
								<div class="controls"><input type="text" class="form-control" name="processUnit" id="processUnit"  /></div>
								
							</div>	
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						
						<div class="controls">
								
							</div>
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
							
											
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
						<div class="span9" align="left"> Unit List<!-- Project Task List --></div>
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
						
							<th>Unit</th>
							<th >Action</th>
							
						
						</tr>
									</thead>
									<tbody style="font-size: 12px;">
										<% int i=0;
												%>
											<c:if test="${not empty processUnitlst}">
												
             		           					<c:forEach var="listValue" items="${processUnitlst}">
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
             		           						
             		           						<td>${listValue}</td>
             		           						
             		           						<td><input name="chk" id="chk" value="${listValue}" type="checkbox">
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
		showhidefield()
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
							var unitName = input.value;
							alert(unitName);
							 $.ajax({
								url : "deleteProcessUnit.html",
								type : "GET",
								data : 'unitName=' + unitName,
								

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
	
	
	function addOperation()
	{
		location.href="../ProductionErp/ppOperationInputRequest.html"
	}
	
	
	 function assignpname()
	  {
		  var pname=$('#pname').val();
		  $('#processName').val(pname)
	  }
	 
	 function getProcessLstByProcess()
	 {
		location.href="../ProductionErp/customerProcessStdRateInputRequest.html";
		 
	 }
	 
	 
	 function getNextForm()
	 {
		 
		location.href="../ProductionErp/customerProcessStdRateInputRequest.html"
	 }
	 
	 
	 function  gethomepage()
	 {
	 	   location.href="getSystems.html?moduleName=customer";
	 }

	</script>
