<div ng-app="myApp" ng-controller="saleorderentryCtrl"> 
<fieldset class="fieldset-style">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Sales Order Entry</div>
						<div class="span3" align="right">
						
						
							<button type="button" class="btn" title="Get Item Code" onclick="getcustItemList()">
  								<i class="icon-search"></i>
							</button>
							
								<div class="btn" align="left" title="Sales Home" onclick="gethomepage()" >
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
						<input type="hidden" name="saleorderno" value="${saleorderno}">
						<div class="control-group">
							<label class="control-label">Customer Name</label>
							<div class="controls">
						<input type="text" name="custName"  ng-model="e.custName" id="custName" class="form-control"/>
							</div>
						</div>
					</div>
					
					<div class="firstquad">
					<div class="control-group">
								<label class="control-label">PO Number</label>
								<div class="controls">
								<input type="text" class="form-control" name="poNo" id="poNo"  ng-model="e.poNo" required="required" placeholder=""/>
								</div>
							</div>
					</div>
					<div class="control-group">
							<label class="control-label">PO Date</label>
							<div class="controls">
								<input type="text" class="form-control"
							required="required"	name="poDate" required="required" ng-model="e.poDate" id="poDate" placeholder="" />
							</div>
						</div>
				
					
			</div>
</div>
	<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Item Entry</div>
						<div class="span3" align="right">
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
								<select class="form-control" name="itemCode" ng-model="e.itemCode" id="itemCode"></select>
							</div>
						</div>
					 <div class="control-group">
							<label class="control-label">Unit</label>
								<input type="text" class="form-control" required="required"
							name="unit" id="unit"  ng-model="e.unit" value="NO" placeholder="" /></div>
					<div class="control-group">
							<label class="control-label">Dilevery Date</label>
							<div class="controls">
							<input type="text" class="form-control" required="required"
							name="dilDate" id="dilDate"  ng-model="e.dilDate" placeholder="" />
							
							</div>
						</div>
						
						
						
										
						
						 
					</div>
	
					
					
					<!-- 2 Column -->	
					
					<div class="firstquad">
					
					<div class="control-group">
							<label class="control-label">Item Description</label>
							<div class="controls">
								<input type="text" name="itemDesc" required="required"  readonly="readonly"
			id="itemDesc" class="form-control" placeholder="" />
							</div>
						</div>
						
						
						 <div class="control-group">
							<label class="control-label">Rate</label>
							<input type="text" class="form-control" required="required" name="rate" id="rate"  ng-model="e.rate" placeholder="" />
			
						</div>
					
						
				</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
						
						
						
							
									
									
						<div class="control-group">
							<label class="control-label">Quantity</label>
							<div class="controls">
								<input type="text" class="form-control" ng-model="e.qty"  required="required" name="qty" id="qty" placeholder=""  onblur="caluculateAmt()"/>
							</div>
						</div>
							
							
							
						<div class="control-group">
							<label class="control-label">Amount</label>
							<div class="controls">
							<input type="text" class="form-control" id="amt" name="amt" ng-model="e.amt"  required="required" readonly="readonly"  placeholder="" />
							</div>
						</div>
							
							
								
				</div>
			</div>
		</div>
	
	 		<div class="panel panel-default" id="idresults">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span11" align="left">Sales Items </div>
							<div class="span1" >
								<div class="btn" onclick="deleteRowsChecked();" id="deletebtn" title="Remove selected Operation">
								<i class="icon-trash"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
			
	
			<div class="panel-body">
				<div class="singleline-records">
						<table class="table table-bordered insideform" style="font-size: 12px;" id="salesItemIntryTable">
									<thead style="font-size: 12px;">
										<tr bgcolor="#84939f">
												<th>Sr No.</th>
								<th>Item Code</th>
								<th>Del Date</th>
								<th>Qty</th>
								<th>Unit</th>
								<th>Rate</th>
								<th>Amount</th>
								<th>Action</th>
									
										</tr>
									</thead>
									<tbody style="font-size: 12px;">
									  <tr ng-repeat="x in names">
  										  <td>{{ x.srno }}</td>
  										   <td>{{ x.itemCode}}</td>
  										   <td>{{ x.dilDate}}</td>
  										   <td>{{ x.qty}}</td>
  										     <td>{{ x.unit}}</td>
  										       <td>{{ x.rate}}</td>
  										  
  										 
  										      <td>{{ x.amt}}</td>
  										    	
             		           						<td><input name="chk" id="chk" value="{{ x.itemCode}}" type="checkbox"></td>
  										      
 										 </tr>
									</tbody>
								</table>
								
								
								
				
				</div>
				
				</div>
	
	
	</div>
	
	</div>
	
	</div>
		
		
	</fieldset>


<script type="text/javascript">					

var app = angular.module('myApp', []);

app.controller('saleorderentryCtrl', function($scope, $http) {
  $scope.submit = function(values){

	  $http.post("savesalesOrderDetail.html",values).then(function (response) {
		  $scope.names =response.data;
		  });
		  
  }
  
});

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
					
  					$('#itemCode').empty();
					   	$('#itemCode').append('<option value="">--Select--</option>');
 					 for (i in List ) {
		
   			 		  $('#itemCode').append('<option value="' + List[i].itemCode + '">' +List[i].itemCode + '</option>');
  				}
			 		}
	
				});
			
			
			
	
}


$(document).ready(function(){
	$('#itemCode').change(function(event){
		
		var custName=document.getElementById("custName").value;

		var code=document.getElementById("itemCode");
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


function getItemRate(){
		
		var custName=document.getElementById("custName").value;

		var code=document.getElementById("itemCode");
		var itemCode = code.options[code.selectedIndex].value;
		
  		$.getJSON('getJsonItemrate.html',{itemCode:itemCode,custName:custName}).done(function(json ) {
  		
  		document.getElementById("rate").value=json[0].itemRate;
  		
  	  })
.fail(function( jqxhr, textStatus, error ) {
alert("fail");
});
}



function savesalesOrderDetail() {
	
	if(checkFinalAmt())
		{
		// get the form values
	   	var custName = $('#custName').val();
	    var salesOrderNo = $('#salesOrderNo').val();
	    var poNo = $('#poNo').val();
	    var poDate = $('#poDate').val();
	    var bTotal = $('#bTotal').val();
	    var exciseAmt = $('#exciseAmt').val();
	    var vatAmt = $('#vatAmt').val();
	    var cstAmt = $('#cstAmt').val();
	    var serviceTaxAmt = $('#serviceTaxAmt').val();
	    var netAmt = $('#netAmt').val();
	    
	  
	    $.ajax({
	    type: "POST",
	    url: "savesalesOrderDetail.html",
	    data: "custName=" + custName + "&salesOrderNo=" + salesOrderNo+ "&poNo=" + poNo+ "&poDate=" + poDate+ "&bTotal=" +bTotal+ "&exciseAmt=" + exciseAmt+ "&vatAmt=" + vatAmt+ "&cstAmt=" + cstAmt+ "&serviceTaxAmt=" +serviceTaxAmt+ "&netAmt=" + netAmt,
	    success: function(response){
	    // we have the response
	    $('#info').html(response);
		location.href="customerPurchaseOrderInputRequest.html";
	 
	    },
	    error: function(e){
	    	alert("Creating New Sales Order")
	    	location.href="customerPurchaseOrderInputRequest.html";
	  
	    }
	    });
	    
		
		}
    
    }
    
    
    
$(function() {
    $( "#poDate" ).datepicker();
    $( "#poDate" ).datepicker("show");
    
    $( "#dilDate" ).datepicker();
    $( "#dilDate" ).datepicker("show");
   
 });



function calculateTotal() 
{ 
		var sum=0;
		var oTable = document.getElementById("salesItemIntryTable");
		 
		 var i;
		 
	     var rowLength = oTable.rows.length;
	    
		  for (i =1; i <rowLength; i++)
		  {
		      var oCells = oTable.rows.item(i).cells;
		      
		      sum=sum+parseFloat(oCells[7].firstChild.data);
		      
		     
		  }
		
		
		 document.getElementById("bTotal").value =sum;
		 getApplyeTaxOfCustomer();
		  
}


function caluculateAmt() {
	var amt=parseFloat(document.getElementById("qty").value)*parseFloat(document.getElementById("rate").value);
	document.getElementById("amt").value=amt;
	
}



	
	
$(document).ready(function () {
    $('form#fname').submit(function() {
        var c = confirm("Please Make Sure Rate & Qty");
        return c;
    });
}); 



function hide() {

	 $("#gstdiv").hide();
	 $("#vatdiv").hide();
	 $("#cstdiv").hide();
	 $("#excisediv").hide();
	 $("#servicetaxdiv").hide();
	 
	
}









function checkFinalAmt()
{
       var c = confirm("Please Check Final Amt");
       return c;
} 



function deleteRowsChecked() {
	var check1 = 0;
	var table = document.getElementById("salesItemIntryTable");
	var pono=document.getElementById("poNo").value;

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
			var table = document.getElementById("salesItemIntryTable");
			for ( var rowi = table.rows.length; rowi--;) {
				var row = table.rows[rowi];
				var inputs = row.getElementsByTagName('input');
				for ( var inputi = inputs.length; inputi--;) {
					var input = inputs[inputi];
					if (input.type === 'checkbox' && input.checked) {
						var itemcode = input.value;
						alert(itemcode);
						 $.ajax({
							url : "deletesalesItems.html",
							type : "GET",
						    data: "pono=" + pono + "&itemcode=" + itemcode+ "&itemcode=" + itemcode,
							

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