<fieldset class="fieldset-style">
<form action="getUsrAllocatedModules.html">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Allocate Module </div>
						<div class="span2" align="right">
							<button type="submit" class="btn" value="" id="btnsave" onclick="saveDocumentName()" title="Get Modules" >
							<i class="icon-search"></i>
							</button>
							
							
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
							<label class="control-label">User Name</label>
							<div class="controls">
								<input type="text" class="form-control" name="userName" id="userName" value="${username}" required="required" placeholder="" />
											
							</div>
						</div>
						
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						
						
					</div>
						
						<!-- 3 Column -->
						
						<div class="firstquad">
						
						
					</div>
						
					</div>
					</div>
					
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span11" align="left">Allocated Modules </div>
						<div class="span1" align="right">
							<div class="btn" title="Remove Selected Module" onclick="deleteRowsChecked()" id="btnclear">
								<i class="icon-trash"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="panel-body">
				<div class="singleline-records">
						<table class="table table-bordered insideform" style="font-size: 12px;" id="userallocatemodule">
									<thead style="font-size: 12px;">
										<tr bgcolor="#84939f">
											<th>Sr No</th>
											
											<th>Module Name</th>
											<th>Module Desc</th>
											<th>Action</th>
											
										
										</tr>
									</thead>
									<tbody style="font-size: 12px;">
										<% int i=0;
												%>
											<c:if test="${not empty userModuleallocatedlst}">
												
             		           					<c:forEach var="listValue" items="${userModuleallocatedlst}">
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
             		           						
             		           						
             		           						<td><input name="chk" id="chk" value="${listValue.moduleId}" type="checkbox">
             		           						</td>
             		           					
             		           					</tr>
             		           						
												</c:forEach>
											</c:if>
										
									</tbody>
								</table>
								
								
								
				
				</div>
				
				</div>
				
				
				<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span11" align="left">Allocate Module </div>
						<div class="span1" align="right">
							<div class="btn" title="Allocate Module" onclick="alloacteRowsChecked()" id="btnclear">
								<i class="icon-plus-sign"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		
			<div class="panel-body">
				<div class="singleline-records">
						<table class="table table-bordered insideform" style="font-size: 12px;" id="allocatemodule">
									<thead style="font-size: 12px;">
										<tr bgcolor="#84939f">
											<th>Sr No</th>
											
											<th>Module Name</th>
											<th>Module Desc</th>
											<th>Action</th>
											
										
										</tr>
									</thead>
									<tbody style="font-size: 12px;">
										<% int j=0;
												%>
											<c:if test="${not empty userModulenotallocatedlst}">
												
             		           					<c:forEach var="listValue" items="${userModulenotallocatedlst}">
             		           					<%
             		           					if(j%2==1){
             		           						%>
             		           							<tr class="" bgcolor="white">
             		           						<%}else{ %>
             		           							<tr class="" bgcolor="#dfe4e6">
             		           						<%
             		           							}
             		           					j++;
             		           					%>
             		           						<td><%=j%></td>
             		           						<td>${listValue.moduleName}</td>
             		           						<td>${listValue.moduleDesc}</td>
             		           						
             		           						
             		           						<td><input name="chk" id="chk" value="${listValue.moduleId}" type="checkbox">
             		           						</td>
             		           					
             		           					</tr>
             		           						
												</c:forEach>
											</c:if>
										
									</tbody>
								</table>
								
								
								
				
				</div>
				
				</div>
				
		
		
		</div>
	 </form> 
	 
	
	 
	</fieldset>
	
	
	
	<script>
	
	
	$(document).ready(function() {
	    $(function() {
	    	
	            $("#userName").autocomplete({     
	            source : function(request, response) {
	            $.ajax({
	                    url : "getEmpNameList.html",
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

	
	
	
	
	
	
	
	function alloacteRowsChecked() {
		var check1 = 0;
		var table = document.getElementById("allocatemodule");
		var userName=document.getElementById("userName").value;
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
			var result = confirm("Are you sure you want to allocate selected records?");
			if (result) {
				var table = document.getElementById("allocatemodule");
				for ( var rowi = table.rows.length; rowi--;) {
					var row = table.rows[rowi];
					var inputs = row.getElementsByTagName('input');
					for ( var inputi = inputs.length; inputi--;) {
						var input = inputs[inputi];
						if (input.type === 'checkbox' && input.checked) {
							var moduleId = input.value;
							alert("Allocated");
							 $.ajax({
								url : "AllocateduserModule.html",
								type : "GET",
							    data: "userName=" + userName+"&moduleId=" + moduleId,
								

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
	
	
	
	
	function deleteRowsChecked() {
		var check1 = 0;
		var table = document.getElementById("userallocatemodule");
		var userName=document.getElementById("userName").value;
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
			var result = confirm("Are you sure you want to deallocate selected records?");
			if (result) {
				var table = document.getElementById("userallocatemodule");
				for ( var rowi = table.rows.length; rowi--;) {
					var row = table.rows[rowi];
					var inputs = row.getElementsByTagName('input');
					for ( var inputi = inputs.length; inputi--;) {
						var input = inputs[inputi];
						if (input.type === 'checkbox' && input.checked) {
							var moduleId = input.value;
							alert("Dealloated");
							 $.ajax({
								url : "removeAllocateduserModule.html",
								type : "GET",
							    data: "userName=" + userName+"&moduleId=" + moduleId,
								

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