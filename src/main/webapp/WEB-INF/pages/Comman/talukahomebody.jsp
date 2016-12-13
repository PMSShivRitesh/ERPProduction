<fieldset class="fieldset-style">
<form role="form" action="saveTaluka.html" name="fnm">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Taluka</div>
						<div class="span2" align="right">
							<input type="button" class="btn-save" value="" id="btnsave" title="Save Taluka"  onclick="check()"/>
							<div class="btn" title="Taluka List" onclick="searchTalukaListByDistrict()" id="btnclear">
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
							<label class="control-label">Select Country </label>
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
						
						
						
						<div class="control-group">
							<label class="control-label">Enter Taluka</label>
							<div class="controls">
								<input type="text" class="form-control" name="talukaName" id="talukaName" placeholder="" />
							</div>
						</div>
						
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">Select State</label>
							<div class="controls">
								<select class="form-control" name="stateName" id="stateName" onchange="getDistrictLst()">
											<option></option>
											
										</select>
							</div>
						
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
								
											
					</div>
				</div>
				
				
				
				<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">Select District</label>
							<div class="controls">
								<select class="form-control" name="districtId" id="districtName" required="required">
											<option></option>
										</select>
							</div>
						
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
								
						</div>					
					</div>
				</div>
			</div>
		<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span11" align="left">Taluka List </div>
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
						<table class="table table-bordered insideform" style="font-size: 12px;" id="talukatable">
									<thead style="font-size: 12px;">
										<tr bgcolor="#84939f">
											<th>Sr No</th>
										
											<th>Taluka</th>
											<th>Action</th>
										
										</tr>
									</thead>
									<tbody style="font-size: 12px;">
										<% int i=0;
												%>
											<c:if test="${not empty talukalst}">
												
             		           					<c:forEach var="listValue" items="${talukalst}">
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
             		           						
             		           						<td>${listValue.talukaName}</td>
             		           						
             		           						<td><input name="chk" id="chk" value="${listValue.talukaName}" type="checkbox">
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
		var table = document.getElementById("talukatable");
		var dname=document.getElementById("districtName").value;
		
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
				var table = document.getElementById("talukatable");
				for ( var rowi = table.rows.length; rowi--;) {
					var row = table.rows[rowi];
					var inputs = row.getElementsByTagName('input');
					for ( var inputi = inputs.length; inputi--;) {
						var input = inputs[inputi];
						if (input.type === 'checkbox' && input.checked) {
							var tname = input.value;
							alert(tname);
							 $.ajax({
								url : "deletetaluka.html",
								type : "GET",
							    data: "dname=" + dname+"&tname="+tname,
								

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
		
	
function getDistrictLst()
{

	var stateName=document.getElementById("stateName");
	var state = stateName.options[stateName.selectedIndex].value;
	
			var stateList;
			jQuery.ajax({
		 	 url: "getJsonDistrictList.html?name="+state,
				 type: "POST",

		  	dataType: "json",
			async: false,
				success: function (data1) {
					stateList = data1
					
					
  					$('#districtName').empty();
					   	$('#districtName').append('<option value="select">Select District</option>');
 					 for (i in stateList) {
 						
   			   $('#districtName').append('<option value="' + stateList[i].districtId + '">' +stateList[i].districtName + '</option>');
  				}
			 		}
	
				});
		
		
	
}

function check()
{
	var flag=true;
	if($("#countryName").val()=="select")
		{
			alert("Please Select Country")
			flag=false;
		}
	
	if($("#stateName").val()==""||$("#stateName").val()=="select")
	{
		alert("Please Select State")
		flag=false;
	}
	
	
	if($("#districtName").val()==""||$("#districtName").val()=="select")
	{
		alert("Please Select District")
		flag=false;
	}

	
	if($("#talukaName").val()=="")
	{
		alert("Please Enter Taluka")
		flag=false;
	}
	
		if(flag)
			{
				document.fnm.submit();
			}

}
	
	
function searchTalukaListByDistrict(){
	location.href="talukalistbydistrict.html"
}

</script>