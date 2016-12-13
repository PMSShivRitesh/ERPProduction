<div ng-app="myApp" ng-controller="dchallanentryCtrl"> 
<body>
<fieldset class="fieldset-style">
<form role="form" action="saveDChallan.html" >
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">D.Challan Detail</div>
						<div class="span3" align="right">
						<div class="btn" align="left" title="Sales Home" >
							<i class="icon-print"></i>
							<!--  	<input type="button" class="glyphicon glyphicon-step-backward" value="Next" onclick="getNextForm()"/>-->
							</div>
							
								<div class="btn" align="left" title="Sales Home" onclick="gethomepage()" >
							<i class="icon-home"></i>
							<!--  	<input type="button" class="glyphicon glyphicon-step-backward" value="Next" onclick="getNextForm()"/>-->
							</div>
							<!-- <button class="btn-save" title="Save" onclick="createUser();" id="btnsave"></button> -->
							
							<!-- <button class="btn-save" title="Save" type="submit"></button> -->
							<!-- <div class="btn" title="Cancel" onclick="clearForm();" id="btnclear">
								<i class="icon-trash"></i>
							</div> -->
						</div>
					</div>
				</div>
			</div>

<div class="container-fluid panel-body">
				<div class="row-fluid search-align">
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">Customer Name</label>
							<div class="controls">
						
						<input type="text" value="${custName}" readonly="readonly" class="form-control" required="required" placeholder=""/>
							</div>
						</div>
					</div>
					
					<div class="firstquad">
						
						
						
						<div class="control-group">
							<label class="control-label">D.Challan No</label>
							<div class="controls">
						<input size="14%" type="text" class="form-control" readonly="readonly" value="${dchllanobj.dchallanno}" placeholder="" value=""  />
							</div>
						</div>
					</div>
					
					
					<div class="firstquad">
						<div class="control-group">
							<label class="control-label">D.Challan Date</label>
							<div class="controls">
						<input type="text" class="form-control" readonly="readonly" value="${dchllanobj.dchallandate}" placeholder="" value=""  />
							</div>
						</div>
						
						
					</div>
					
					
					
			</div>
			
				<div class="row-fluid search-align">
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">PO No.</label>
							<div class="controls">
						<input type="text" value="${dchllanobj.pono}" class="form-control" readonly="readonly" placeholder=""  />
							</div>
						</div>
					</div>
					
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">PO Date</label>
							<div class="controls">
						<input type="text" readonly="readonly" value="${dchllanobj.podate}" class="form-control" required="required" placeholder=""  />
							</div>
						</div>
					</div>
					
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">Challan Type</label>
							<div class="controls">
						<input type="text" class="form-control" readonly="readonly" value="${dchllanobj.dchallantype}" placeholder=""  />
							</div>
						</div>
					</div>
					
			</div>
</div>
	

	 		<div class="panel panel-default" id="idresults">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span11" align="left">D.Challan Items </div>
							
					</div>
				</div>
			</div>
			
			
			<div class="panel-body">
				<div class="singleline-records">
						<table class="table table-bordered insideform" style="font-size: 12px;" id="dchallantable">
									<thead style="font-size: 12px;">
										<tr bgcolor="#84939f">
												<th>Sr No.</th>
								<th>Item Code</th>
								
								
								<th>Qty</th>
							
							
									
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
             		           							}
             		           					i++;
             		           					%>
             		           						
             		           						<td><%=i %></td>
             		           						<td>${listValue.itemcode}</td>
             		           					
             		           					
             		           						<td>${listValue.itemQty}</td>
             		           					
             		           					
             		           					
             		           					</tr>
												</c:forEach>
											</c:if>
								</table>
								
								
								
				
				</div>
				
				</div>
	
	
	</div>
	
	
	
			</fieldset>
		</div>
	


<script type="text/javascript">			

var app = angular.module('myApp', []);

app.controller('dchallanentryCtrl', function($scope, $http) {
  $scope.submit = function(values){

	  $http.post("saveDChallan.html",values).then(function (response) {
		  $scope.names =response.data;
		  });
		  
  }
  
});

function onloadActivity(){
	date();
	getcustItemList();
}

function date()
{
		
		$("#dchallandate").val($.datepicker.formatDate("dd/mm/yy", new Date()));
}

function getcustItemList()
{
	
	var custName=document.getElementById("custName").value;
	
	
			var List;
			jQuery.ajax({
		 	url: "getcustItemcodelist.html?custName="+custName,
			type: "POST",
			dataType: "json",
			async: false,
				success: function (data) {
					List = data
					
  					$('#itemcode').empty();
					   	$('#itemcode').append('<option value="">--Select--</option>');
 					 for (i in List ) {
		
   			 		  $('#itemcode').append('<option value="' + List[i].itemCode + '">' +List[i].itemCode + '</option>');
  				}
			 		}
	
				});
			
			
			
	
}


$(document).ready(function(){
	$('#itemcode').change(function(event){
		
		var custName=document.getElementById("custName").value;

		var code=document.getElementById("itemcode");
		var itemCode = code.options[code.selectedIndex].value;
		
  		$.getJSON('getJsonItemdesc.html',{itemCode:itemCode}).done(function(json ) {
  		
  			
  			document.getElementById("itemDesc").value=json[0].itemDesc;
  			getItemRate();
  		
  	  })
.fail(function( jqxhr, textStatus, error ) {
alert("fail");
});
});
});


    
    
$(function() {
    $( "#podate" ).datepicker();
    $( "#podate" ).datepicker("show");
 
   
   
 });
 
$(function() {
	   $( "#dchallandate" ).datepicker();
	    $( "#dchallandate" ).datepicker("show");	
   
 });


function deleteRowsChecked() {
	var check1 = 0;
	var table = document.getElementById("dchallantable");

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
			var table = document.getElementById("dchallantable");
			for ( var rowi = table.rows.length; rowi--;) {
				var row = table.rows[rowi];
				var inputs = row.getElementsByTagName('input');
				for ( var inputi = inputs.length; inputi--;) {
					var input = inputs[inputi];
					if (input.type === 'checkbox' && input.checked) {
						var srno = input.value;
						alert(srno);
						 $.ajax({
							url : "deletedchallanitems.html",
							type : "GET",
						    data: "srno=" + srno ,
							

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