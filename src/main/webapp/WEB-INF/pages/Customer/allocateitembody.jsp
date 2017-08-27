 
<fieldset class="fieldset-style">
<div ng-app="myApp" ng-controller="allocateitemcontroler">
<form role="form" action="saveCustomerItem.html" method="post" >
<div class="alert alert-success" id="idsuccess">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<i class="icon-thumbs-up"></i>Record  Delete Successfully 
		</div>
		<div class="alert alert-success" id="idsuccess1">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<i class="icon-thumbs-up"></i> Details Added
		</div>
		<div class="alert alert-success" id="idsuccess2">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<i class="icon-thumbs-up"></i>
		</div>
				
		<script type="text/javascript">
		$("#idsuccess").hide();
		$("#idsuccess1").hide();		
		$("#idsuccess2").hide();
		</script>
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Create Item</div>
						<div class="span2" align="right">
							<div ng-click="submit(e)" class="btn" value="" id="btnsave" title="Save Filled Data" />
									<i class="icon-plus-sign"></i>
							</div>
							 <div class="btn" title="Delete Selected Item" onclick="deleteRowsChecked()" id="btnclear">
								<i class="icon-trash"></i>
							</div> 
							<div class="btn" onclick="gethomepage();" id="btnclear" title="Go To Customer Systems">
								<i class="icon-home"></i>
							</div>
							
							
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
								<input type="text" class="form-control" ng-model="e.custName" name="custName" id="custName"  ng-blur="getdata(e)" value="${custName}" placeholder="" required="required" />
							</div>
						</div>
				
							
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						<div class="control-group">
							<label class="control-label">Item Code</label>
							<div class="controls">
								<input type="text" class="form-control" ng-model="e.itemCode" name="itemCode" id="itemCode" onblur="checkcustitemexist()"  required="required"/>
							</div>
						</div>

					
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
						  <div class="control-group">
							<label class="control-label">Item Rate</label>
							<div class="controls">
								<input type="text" class="form-control" ng-model="e.itemRate" name="itemRate" placeholder="" required="required" />
							</div>
						</div>
						
						 
											
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
						<div class="span11" align="left"><!-- Project Task List --></div>
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
					<table id="idtable" class="table table-bordered insideform" id="idtable">
						<thead style="font-size: 12px;">
						<tr bgcolor="#84939f">
							<th>Sr.No</th>
							<th>Item Code</th>
						
							<th>Rate</th>
							<th>Action</th>
							
						</tr>
									</thead>
									<tbody style="font-size: 12px;">
										 <tr ng-repeat="x in names">
  										  <td>{{$index + 1}}</td>
  										   <td>{{ x.itemCode}}</td>
  										   <td>{{ x.itemRate}}</td>
  										   
  										  <td><input  id="chk" value="{{x.custItemId}}" type="checkbox"></td>
  										  
 										 </tr>
											
										
									</tbody>
								</table>
								
								
								
				
				</div>
				</div>
			</div>
		</div>		
	 
	</fieldset>
	
	<script>
	
	var app = angular.module('myApp', []);

	app.controller('allocateitemcontroler', function($scope, $http) {
	  $scope.submit = function(values){

		  $http.post("saveCustomerItem.html",values).then(function (response) {
			  $scope.names =response.data;
			  });
			  
	  }
	  
	  $scope.getdata = function(values){

		  $http.post("getCustomerAllocatedItem.html",values).then(function (response) {
			  $scope.names =response.data;
			  });
			  
	  }
	  
	});


function checkcustitemexist() {
    // get the form values
   var custName = $('#custName').val();
	var itemCode=$('#itemCode').val();
    $.ajax({
    type: "POST",
    url: "checkcustitemexist.html",
    data: "custName=" + custName + "&itemCode=" + itemCode,
    success: function(data){
    	
    	if(data=='"1"'){
    		 $('#idsuccess').hide();
    		 $("#idsuccess1").hide();
    		 $("#idsuccess2").hide();
			}
    else
    	{	
    		
    	   $('#idsuccess2').show();
    	
    	
    //$("#idsuccess").show();
    $("#idsuccess2").html("<button type='button' class='close' data-dismiss='alert' onclick='hide();'>&times;</button><i class='icon-thumbs-up'></i>"+
    		data);
    
   
    
    	}
    
 
    },
    error: function(e){
    alert('Error: ' + e);
    }
    });
    }
   
    


function  gethomepage()
{
	  location.href="getSystems.html?moduleName=customer";
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
		$("#idsuccess1").hide();
		$("#idsuccess2").hide();
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
						var custitemid = input.value;
						alert(custitemid);
						 $.ajax({
							url : "deleteCustomerItem.html", 
							type : "GET",
						    data: "&custitemid=" +custitemid,
							

							success : function(data) {
								var obj = JSON.parse(data.status);
							}
						}); 
						row.parentNode.removeChild(row);
					}
				}
			}
			$("#idsuccess1").hide();		
			$("#idsuccess2").hide();
			$('#idsuccess').show();
			$('#iderror').hide();
		}
	}
}


</script>