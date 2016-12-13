<fieldset class="fieldset-style">
<form role="form" action="stateSearch.html" name="fnm">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Search State</div>
						<div class="span2" align="right">
							<div class="btn" onclick="addState()"  title="Add State">
								<i class="icon-plus-sign"></i>
							</div>
							
							
							<div class="btn" title="Delete Selected Row" onclick="deleteRowsChecked()" id="btnclear">
								<i class="icon-trash"></i>
							</div>
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
							<label class="control-label">Select Country </label>
							<div class="controls">
								<select class="form-control" name="countryId" id="countryId" required="required" onchange="this.form.submit()">
										<option value="select">--Select Country--</option>
									<c:if test="${not empty countryllst}">
             		           			<c:forEach var="listValue" items="${countryllst}">
             		           				<option value="${listValue.key}">${listValue.value}</option>
										</c:forEach>
									</c:if>
										</select>
											
							</div>
						</div>
						
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
					
						
						<!-- 3 Column -->
						
					<div class="firstquad">
								
											
					</div>
				</div>
			</div>
		</div>
	
	 <div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span11" align="left" id="selectedstatename"> </div>
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
						<table class="table table-bordered insideform" style="font-size: 12px;" id="statetable">
									<thead style="font-size: 12px;">
										<tr bgcolor="#84939f">
											<th>Sr No</th>
										
											<th>State</th>
											<th>Action</th>
											
										</tr>
									</thead>
									<tbody style="font-size: 12px;">
										<% int i=0;
												%>
											<c:if test="${not empty statelst}">
												
             		           					<c:forEach var="listValue" items="${statelst}">
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
             		           						
             		           						<td>${listValue.stateName}</td>
             		           						
             		           					
             		           						<td><input name="chk" id="chk" value="${listValue.stateName}" type="checkbox">
             		           						</td>
             		           					
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
	function  gethomepage()
	{
		  location.href="getSystems.html?moduleName=comman";
	}
	
	function addState(){
		location.href="statehome.html"
	}
	function deleteRowsChecked() {
		var check1 = 0;
		var table = document.getElementById("statetable");
		
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
				var table = document.getElementById("statetable");
				for ( var rowi = table.rows.length; rowi--;) {
					var row = table.rows[rowi];
					var inputs = row.getElementsByTagName('input');
					for ( var inputi = inputs.length; inputi--;) {
						var input = inputs[inputi];
						if (input.type === 'checkbox' && input.checked) {
							var sname = input.value;
							alert(sname);
							 $.ajax({
								url : "deletestate.html",
								type : "GET",
							    data: "sname=" + sname,
								

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
