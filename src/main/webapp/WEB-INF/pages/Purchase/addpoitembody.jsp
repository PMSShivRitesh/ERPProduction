<div ng-app="myApp" ng-controller="noramalinvoiceentryCtrl"> 

<fieldset class="fieldset-style">
<form role="form" action="saveInvoice.html" >
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Add Purchase Items</div>
						<div class="span3" align="right">
						
						
							
							
							<button type="button" class="btn" title="Get Item Code" onclick="getdchallandetail()">
  								<i class="icon-eye-open"></i>
							</button>
							
							
							
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
							<label class="control-label">Supplier Name</label>
							<div class="controls">
						
						<input type="text" name="suppName"  ng-model="e.suppName" id="suppName" class="form-control" required="required" placeholder=""/>
							</div>
						</div>
					</div>
					
					<div class="firstquad">
						
						
						
						<div class="control-group">
							<label class="control-label">PO Date</label>
							<div class="controls">
							<input size="14%" type="text" name="podate" ng-model="e.podate" id="podate" class="form-control" required="required" placeholder="" value=""  />
							</div>
						</div>
					</div>
				
					
			</div>
			
</div>
	<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Item Entry</div>
							<div class="span3" align="right">
							<button type="button" class="btn" title="Get Item Code" onclick="getcustItemList()">
  								<i class="icon-search"></i>
							</button>
							<div class="btn" ng-click="submit(e)"  title="Add Sales Order" >
								<i class="icon-plus-sign"></i>
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
							<label class="control-label">Item Code</label>
							<div class="controls">
								<select class="form-control" name="itemcode" ng-model="e.itemcode" id="itemcode"></select>
							</div>
						</div>
					
					<div class="control-group">
							<label class="control-label">Quantity</label>
							<div class="controls">
								<input type="text" class="form-control"  required="required" name="itemQty" ng-model="e.itemQty" id="itemQty" placeholder=""  onblur="caluculateAmt()"/>
							</div>
						</div>			
						
				
							
						 
					</div>
	
					
					
					<!-- 2 Column -->	
					
					<div class="firstquad">
					
						<div class="control-group">
							<label class="control-label">Item Description</label>
							<div class="controls">
								<input type="text" name="itemDesc" ng-model="e.itemDesc" required="required" readonly="readonly"
			id="itemDesc" class="form-control" placeholder="" />
							</div>
						</div>
						
						<div class="control-group">
							<label class="control-label">Amount</label>
							<div class="controls">
								<input type="text" class="form-control"  required="required" name="amount" ng-model="e.amount" id="amount" placeholder=""  />
							</div>
						</div>			
							
						
												</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
									
							<div class="control-group">
							<label class="control-label">Rate</label>
							<div class="controls">
								<input type="text" class="form-control"  required="required" readonly="readonly" name="rate"  ng-model="e.rate" id="rate" placeholder=""  onblur="caluculateAmt()"/>
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
						<div class="span11" align="left">Invoice Items </div>
							<div class="span1" align="right">
								<div class="btn" onclick="deleteRowsChecked();" id="deletebtn" title="Remove selected Operation">
								<i class="icon-trash"></i>
							</div>
						</div>
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
								<th>Rate</th>
								<th>Amount</th>
								<th>Action</th>
									
										</tr>
									</thead>
									<tbody style="font-size: 12px;">
										
										 <tr ng-repeat="x in names">
  										  <td>{{ x.srno }}</td>
  										   <td>{{ x.itemCode}}</td>
  										   <td>{{ x.qty}}</td>
  										    <td>{{ x.rate}}</td>
  										     <td>{{ x.amount}}</td>
  										   
  										  <td><input  id="chk" value="{{ x.srno }}" type="checkbox"></td>
  										   <input type="hidden" value="{{ x.invoiceno}}" id="invoiceno"/>   
 										 </tr>
									</tbody>
								</table>
				
				</div>
				
				</div>
	
	
	</div>
	
	
	
			</fieldset>
		</div>
	


<script type="text/javascript">			

var app = angular.module('myApp', []);

app.controller('noramalinvoiceentryCtrl', function($scope, $http) {
	
	
  $scope.submit = function(values){
	  
	  values.rate=document.getElementById("rate").value;
	  values.amount=document.getElementById("amount").value;
	
	  $http.post("saveInvoice.html",values).then(function (response) {
		  $scope.names =response.data;
		  });
		  
  }
  
});

$(function() {
    $( "#podate" ).datepicker();
    $( "#podate" ).datepicker("show");
 
   
   
 });

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
  			
  			$.getJSON('getItemrate.html',{custName:custName,itemCode:itemCode}).done(function(json ) {
  				
  					document.getElementById("rate").value=json;
  				
  	  }) 
  		
  	  })
.fail(function( jqxhr, textStatus, error ) {
alert("fail");
});
});
});


function caluculateAmt(){
	
	document.getElementById("amount").value=(document.getElementById("rate").value)*(document.getElementById("itemQty").value);
}
    
    
$(function() {
    $( "#podate" ).datepicker();
    $( "#podate" ).datepicker("show");
 
   
   
 });
 
$(function() {
	   $( "#invoicedate").datepicker();
	    $( "#invoicedate").datepicker("show");	
   
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


function getdchallandetail(){
	var dchallanno =document.getElementById("dchallanno").value;

	location.href="dchallandetail.html?dchallanno="+dchallanno;
}

</script>