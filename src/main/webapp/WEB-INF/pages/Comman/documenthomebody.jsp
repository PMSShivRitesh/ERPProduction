<fieldset class="fieldset-style">

<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Documents </div>
						<div class="span2" align="right">
							<input type="submit" class="btn-save" value="" id="btnsave" onclick="saveDocumentName()" title="Add Document" />
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
							<label class="control-label">Document Name</label>
							<div class="controls">
								<input type="text" class="form-control" name="DocumentName" id="DocumentName"  placeholder="" required="required" />
											
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
						<div class="span11" align="left">Document List </div>
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
						<table class="table table-bordered insideform" style="font-size: 12px;" id="doctable">
									<thead style="font-size: 12px;">
										<tr bgcolor="#84939f">
											<th>Sr No</th>
											
											<th>Document Name</th>
											<th>Action</th>
											
										
										</tr>
									</thead>
									<tbody style="font-size: 12px;">
										<% int i=0;
												%>
											<c:if test="${not empty documentlst}">
												
             		           					<c:forEach var="listValue" items="${documentlst}">
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
				
				</div>
		</div>
		</div>
	 </form> 
	 
	
	 
	</fieldset>
	
	
	
	<script>
	
	function deleteRowsChecked() {
		var check1 = 0;
		var table = document.getElementById("doctable");
		
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
				var table = document.getElementById("doctable");
				for ( var rowi = table.rows.length; rowi--;) {
					var row = table.rows[rowi];
					var inputs = row.getElementsByTagName('input');
					for ( var inputi = inputs.length; inputi--;) {
						var input = inputs[inputi];
						if (input.type === 'checkbox' && input.checked) {
							var dname = input.value;
							alert(dname);
							 $.ajax({
								url : "deletedocument.html",
								type : "GET",
							    data: "dname=" + dname,
								

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

	
function saveDocumentName() {
    // get the form values
    var dname = $('#DocumentName').val();
    if($('#dname').val()=="")
    	{
    		alert("Please Enter Document Name");
    	}
    else
    	{
  
    $.ajax({
    type: "POST",
    url: "saveDocumentName.html",
    data: "DocumentName=" + dname,
    success: function(response){
    // we have the response
    $('#info').html(response);
    $('#dname').val('');
    location.href="commanDocumentNameInsertRequest.html";
    
    },
    error: function(e){
    alert('Exists');
    }
    });}
    }
    
	

</script>