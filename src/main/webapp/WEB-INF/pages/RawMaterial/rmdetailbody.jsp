


<body onload="calculateTotal()">
<fieldset class="fieldset-style">
<form role="form" action="getrmdetail.html" >
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">RM Detail</div>
						<div class="span2" align="right">
							<!-- <input type="submit" class="btn-save" value="" id="btnsave" /> -->
							
							<div class="btn" title="Cancel" onclick="clearForm();" id="btnclear">
								<i class="icon-trash"></i>
							</div>
							
							<div class="btn" title="Cancel" onclick="gethomepage();" id="btnclear">
								<i class="icon-home"></i>
							</div>
						</div>
					</div>
				</div>
			</div>




			<!--      Actual Form -->
			<div class="container-fluid panel-body">
				<div class="row-fluid search-align">
					<div class="firstquad">
							
						<div class="control-group">
							<label class="control-label">Basic RM Grade</label>
							<div class="controls">
								<select class="form-control" onchange="getRawMaterialLst()" name="brmGrade" id="brmGrade">
								<option>--Select--</option>
											<c:if test="${not empty brmgradelst}">
             		           					<c:forEach var="listValue" items="${brmgradelst}">
             		           						<option value="${listValue}">${listValue}</option>
												</c:forEach>
											</c:if>
								</select>
							</div>
						</div>
						 
					</div>
					
					
					
						
						<!-- 3 Column -->
						
					<div class="firstquad">
					<div class="control-group">
							<label class="control-label">RM Sub Grade</label>
							<div class="controls">
								<select class="form-control" name="rmGrade" id="rmGrade" onchange="this.form.submit()"></select>
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
						<div class="span11" align="left">Details </div>
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
						<table class="table table-bordered insideform" style="font-size: 12px;" id="salesItemIntryTable">
									<thead style="font-size: 12px;">
										<tr bgcolor="#84939f">
											<th>Sr No </th>
											
											<th>RM Shape</th>
											<th>Supplier</th>
											<th>Rate</th>
											<th>Action</th>
											
										</tr>
									</thead>
									<tbody style="font-size: 12px;">
										
											<c:if test="${not empty rmgradelst}">
												<% int i=1;
												%>
             		           					<c:forEach var="listValue" items="${rmgradelst}">
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
             		           					
             		           						<td>${listValue.rmShapeName}</td>
             		           						<td>${listValue.supplierName}</td>
             		           						<td>${listValue.supplierRate}</td>
             		           						<td><input name="chk" id="chk" value="${listValue.brmgname}" type="checkbox">
             		           					</tr>
												</c:forEach>
											</c:if>
										
									</tbody>
								</table>
								
								
								
				
				</div>
				
				</div>
	
	
	</div>
	
	
	
	</fieldset>



<script type="text/javascript">					
function getRawMaterialLst()
{

	var brmGrade=document.getElementById("brmGrade");
	var brawmaterialname = brmGrade.options[brmGrade.selectedIndex].value;
	
	
			var rawMaterialList;
			jQuery.ajax({
		 	 url: "getJsonRawMaterialList.html?name="+brawmaterialname,
				 type: "POST",

		  	dataType: "json",
			async: false,
				success: function (data) {
					rawMaterialList = data
					
  					$('#rmGrade').empty();
					   	$('#rmGrade').append('<option value="">Select RM Grade</option>');
 					 for (i in rawMaterialList ) {
		
   			   $('#rmGrade').append('<option value="' + rawMaterialList[i].rmGrade + '">' +rawMaterialList[i].rmGrade + '</option>');
  				}
			 		}
	
				});
	
}


function  gethomepage()
{
	  location.href="getSystems.html?moduleName=RawMaterial";
}



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
						var rmgrade = input.value;
						alert(rmgrade);
						 $.ajax({
							url : "deletermgrade.html",
							type : "GET",
						    data: "brmgname=" + rmgrade,
							

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