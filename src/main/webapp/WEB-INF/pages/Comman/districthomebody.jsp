<fieldset class="fieldset-style">
<form role="form" action="saveDistrict.html" name="fnm">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">District</div>
						<div class="span2" align="right">
							<input type="button" class="btn-save" value="" id="btnsave" title="Save District" onclick="check()"/>
							
							<div class="btn" title="State List" onclick="searchDistrictListByState()" id="btnclear">
								<i class="icon-list-alt"></i>
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
							<label class="control-label">Select Country</label>
							<div class="controls">
								<select class="form-control" name="countryName" id="countryName" onchange="getStateLst()">
											<option value="select">--Select--</option>
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
						
						<div class="control-group">
							<label class="control-label">Select State</label>
							<div class="controls">
								<select class="form-control" name="stateId" id="stateName"></select>
									
											
							</div>
						
						
						</div>
					</div>
						
						<!-- 3 Column -->
						
						<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">District Name</label>
							<div class="controls">
								<input type="text" class="form-control" required="required"  name="districtName" id="districtName" placeholder="" />
									
											
							</div>
						
						
						</div>
					</div>
						
					</div>
					</div>
					
			
	 <div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span11" align="left">District List </div>
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
						<table class="table table-bordered insideform" style="font-size: 12px;" id="districttable">
									<thead style="font-size: 12px;">
										<tr bgcolor="#84939f">
											<th>Sr No</th>
										
											<th>District</th>
											<th>Action</th>
										
										</tr>
									</thead>
									<tbody style="font-size: 12px;">
										<% int i=0;
												%>
											<c:if test="${not empty districtlst}">
												
             		           					<c:forEach var="listValue" items="${districtlst}">
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
             		           						<td>${listValue.districtName}</td>
             		           						
             		           						
             		           						<td><input name="chk" id="chk" value="${listValue.districtName}" type="checkbox">
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
		var table = document.getElementById("districttable");
		var sname=document.getElementById("stateName").value;
		
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
				var table = document.getElementById("districttable");
				for ( var rowi = table.rows.length; rowi--;) {
					var row = table.rows[rowi];
					var inputs = row.getElementsByTagName('input');
					for ( var inputi = inputs.length; inputi--;) {
						var input = inputs[inputi];
						if (input.type === 'checkbox' && input.checked) {
							var dname = input.value;
							alert(dname);
							 $.ajax({
								url : "deletedistrict.html",
								type : "GET",
							    data: "sname=" + sname+"&dname="+dname,
								

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

	

function getStateLst()
	{
	
		var countryName=document.getElementById("countryName");
		var country = countryName.options[countryName.selectedIndex].value;
		
		
				var countryList;
				jQuery.ajax({
			 	 url: "getJsonStateList.html?name="+country,
 				 type: "POST",
	
			  	dataType: "json",
				async: false,
  				success: function (data) {
  					countryList = data
  					
      					$('#stateName').empty();
  					   	$('#stateName').append('<option value="select">Select State</option>');
     					 for (i in countryList ) {
   		
       			   $('#stateName').append('<option value="' + countryList[i].stateId + '">' +countryList[i].stateName + '</option>');
      				}
 			 		}
		
					});
			
			
		
	}
	
	
// Form Validation Start

function check()
{
 	var flag=true;
	 
	if($('#countryName').val()=="select")
		{
			alert("Please Select Country")
			flag=false;
		}
	
	if($('#stateName').val()=="select"||$('#stateName').val()=="")
	{
		alert("Please Select Country")
		flag=false;
	}
	
	
	if($('#districtName').val()=="")
	{
		alert("Please Enter District name")
		flag=false;
	}
	
	if(flag)
		{
			document.fnm.submit();  
		
		}
}


function searchDistrictListByState(){
	location.href="districtSearchByState.html"
}
	

</script>