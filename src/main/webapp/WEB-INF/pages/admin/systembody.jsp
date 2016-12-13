<fieldset class="fieldset-style">
<form role="form" action="saveSystems.html">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Systems</div>
						<div class="span2" align="right">
							<input type="submit" class="btn-save" value="" id="btnsave" title="Add Country"/>
							
							
								<div class="btn" align="left" title="Comman Home" onclick="gethomepage()" >
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
							<label class="control-label">Module Name</label>
							<select class="form-control" name="moduleName">
									<c:if test="${not empty lists}">
             		           			<c:forEach var="listValue" items="${lists}">
             		           				<option value="${listValue.key}">${listValue.value}</option>
										</c:forEach>
									</c:if>
									</select>
						</div>
						
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">System Name</label>
							<div class="controls">
								<input type="text" class="form-control" name="systemName" placeholder="" />
							</div>
						</div>
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
							<div class="control-group">
							<label class="control-label">System Desc</label>
							<div class="controls">
								<input type="text" class="form-control" name="systemDesc" placeholder="" />
							</div>
						</div>	
											
					</div>
				</div>
			</div>
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span11" align="left">Available Systems </div>
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
						<table class="table table-bordered insideform" style="font-size: 12px;" id="countrytable">
									<thead style="font-size: 12px;">
										<tr bgcolor="#84939f">
											<th>Sr No.</th>
											<th>Module Name</th>
											<th>Module Desc</th>
											
										</tr>
									</thead>
									<tbody style="font-size: 12px;">
										<% int i=0;
												%>
											<c:if test="${not empty mlst}">
												
             		           					<c:forEach var="listValue" items="${mlst}">
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
             		           						
             		           						<td>${listValue.moduleName}</td>
             		           						<td>${listValue.moduleDesc}</td>
             		           						
             		           					
             		           					
             		           					</tr>
             		           						
												</c:forEach>
											</c:if>
										
									</tbody>
								</table>
								
								
								
				
				</div>
				
				</div>
		</div>
		</div>
	 </form> 
	 
	
	 
	</fieldset>
	
	
	
	<script>
	
	function deleteRowsChecked() {
		var check1 = 0;
		var table = document.getElementById("countrytable");
		
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
				var table = document.getElementById("countrytable");
				for ( var rowi = table.rows.length; rowi--;) {
					var row = table.rows[rowi];
					var inputs = row.getElementsByTagName('input');
					for ( var inputi = inputs.length; inputi--;) {
						var input = inputs[inputi];
						if (input.type === 'checkbox' && input.checked) {
							var countryname = input.value;
							alert(countryname);
							 $.ajax({
								url : "deleteCountry.html",
								type : "GET",
							    data: "cname=" + countryname,
								

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
		  location.href="getSystems.html?moduleName=comman";
	}

	
	</script>
