<body onload="hide()">
<fieldset class="fieldset-style">
<form role="form" action="savePurchseOrder.html" method="post">

<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Create Purchase Order</div>
						<div class="span3" align="right">
							<div class="btn" onclick="getpendingponum()" title="Search Po Items">
								<i class="icon-search"></i>
							</div>
							<input type="submit" class="btn-save" value="" id="btnsave" title="Create Purchase Order">
							
							<div class="btn" onclick="getpendingponum()" title="Search Po Items">
								<i class="icon-print"></i>
							</div>
							
							<div class="btn" align="left" title="Purchase Home" onclick="gethomepage()" >
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
							<label class="control-label">Supplier Name</label>
							<div class="controls">
								<select class="form-control" placeholder="" name="suppName" id="suppName" />
								<option>--Select--</option>
											<c:if test="${not empty posuppNamelst}">
             		           					<c:forEach var="listValue" items="${posuppNamelst}">
             		           						<option value="${listValue}">${listValue}</option>
												</c:forEach>
											</c:if>
								</select>
							</div>
						</div>
						
						
						</div>
						
				
				</div>
			</div>
		</div>
		</div>
	  
	 
	 
	 <!-- //2 Pannel -->
	 
	 
	 
	 <div class="form-horizontal">
		<div class="panel panel-default">
		<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Select Purchase Order</div>
						
					</div>
				</div>
			</div>

			<div class="container-fluid panel-body">
				<div class="row-fluid search-align">
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">PO No.</label>
							<div class="controls">
								<select class="form-control" id="poNumber" name="poNumber" onchange="getPoDetail()"></select>
									
							</div>
						</div> 
						
						
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">PO Date</label>
							<div class="controls">
								<input type="text" class="form-control" name="poDate" id="poDate" placeholder="" />
									
							</div>
						</div>
						
						
						</div>
						
					
				</div>
			</div>
		</div>
		</div>
		
	
		
		<!-- 4 pannel -->
		
	<div class="panel panel-default" id="idresults">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span11" align="left">PO Items </div>
						<div class="span1" align="right">
							<!-- <div class="btn" onclick="deleteRowsChecked();" id="deletebtn" title="Delete selected">
								<i class="icon-trash"></i>
							</div> -->
						</div>
					</div>
				</div>
			</div>
			
			
			
				<div class="container-fluid panel-body" style="width: 90% !important; margin-left: 15px !important;">
				<div class="row-fluid search-align">
				<div class="dataTable_wrapper">
						<table class="table table-striped table-bordered table-hover"  id="purchaseitemtable">
									<thead style="font-size: 12px;">
										<tr bgcolor="#84939f">
											<th >Item Code</th>
											<th >Item Desc</th>
											<th >Qty</th>
											<th >Unit</th>
											<th >Rate</th>
											<th >Amount</th>
											
										</tr>
									</thead>
									<tbody >
									</tbody>
								</table>
				
				</div>
			
				</div>
		
		</div>
		
		
		<!-- 4 pannel -->
		
		  <div class="form-horizontal">
		<div class="panel panel-default">
			

			<div class="container-fluid panel-body">
				<div class="row-fluid search-align">
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">Basic Total</label>
							<div class="controls">
								<input type="text"  name="bTotal" id="bTotal" class="form-control" placeholder="" readonly="readonly" />
							</div>
						</div> 
						 <div class="control-group" id="cstdiv">
							<label class="control-label">CST</label>
							<div class="controls">
								<input type="text" class="form-control" placeholder="" />
							</div>
						</div> 
						<div class="control-group" id="cstdiv">
							<label class="control-label">Final Amount</label>
							<div class="controls">
								<input type="text" class="form-control" placeholder="" id="netAmt" name="netAmt" onblur="converWordToRs()" />
							</div>
						</div> 
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						
						<div class="control-group" id="excisediv">
							<label class="control-label">Excise 12.5%</label>
							<div class="controls">
							<input type="text" id="exciseAmt" name="exciseAmt" class="form-control" placeholder="" />
							</div>
						</div>
						<div class="control-group" id="gstdiv">
							<label class="control-label">GST</label>
							<div class="controls">
								<input type="text" class="form-control" placeholder="" />
							</div>
						</div>
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
								
						
						<div class="control-group" id="vatdiv">
							<label class="control-label">Vat 12.5%</label>
							<div class="controls">
							<input type="text" id="vatAmt" name="vatAmt" class="form-control" placeholder="" />
							</div>
						</div>
						<div class="control-group" id="servicetaxdiv">
							<label class="control-label">Service Tax</label>
							<div class="controls">
								<input type="text" class="form-control" placeholder="" />
							</div>
						</div>
											
					</div>
					
				</div>
				
			</div>
		
		</div>
		</div>
		
		
	</form>
	
	</fieldset>
</body>

<script>



$(function() {
   $( "#qdate" ).datepicker();
   $( "#qdate" ).datepicker("show");
});


$(function() {
    $( "#poDate").datepicker();
    $( "#poDate").datepicker("show");
 });



//get Pending PO 
function getpendingponum()
{
	
	var name=document.getElementById("suppName").value;

			var pendingpolst;
			jQuery.ajax({
		 	 url: "getpendingpo.html?name="+name,
				 type: "POST",

		  	dataType: "json",
			async: false,
				success: function (data) {
					pendingpolst = data
					
					$('#poNumber').empty();
					   	$('#poNumber').append('<option value="">Select</option>');
					 for (i in pendingpolst) {
		
 			   $('#poNumber').append('<option value="' + pendingpolst[i].poNumber + '">' +pendingpolst[i].poNumber + '</option>');
				}
			 		}
	
				});
		
}

//End 


//Datable Integration


$(document).ready(function() {
    $('#purchaseitemtable').DataTable({
    	  "sPaginationType": "full_numbers",
          "bJQueryUI": true
    });
});





function getPoDetail()
{
	
    $('#purchaseitemtable').dataTable( {
		"ajax": 'getPurchaseItemDetail.html?pono='+$("#poNumber").val(),
		
		"columns": [
		           
					{ "data": "itemcode"},
					{ "data": "itemdesc"},
					{ "data": "qty"},
					{ "data": "unit"},
					{ "data": "rate"},
					{ "data": "amt"},
					
				],
				"destroy" : true,
				"language": {
					           "emptyTable": "<font  color=red><I>No Items</I></font>"
					         },
					       
	});
    
    
   getBasicAmt()
  
}


//End Datatable



//Get applya taxes to supplier
function getApplyeTaxOfSupplier()
{
	
	var suppName=$("#suppName").val();

	$.getJSON('getApplyeTaxOfSupplier.html',{suppName:suppName}).done(function(json) {
		
	
		
		if(json[0].suppGst=="YES")
		{
			 $("#gstdiv").show();
		}
	
		
		if(json[0].suppCst=="YES")
		{
			 $("#cstdiv").show();
		}
		
		
		if(json[0].suppExcise=="YES")
		{
			$("#excisediv").show();
			//alert(document.getElementById("bTotal").value)
			var exiseamt=parseFloat(document.getElementById("bTotal").value)*0.125;
			document.getElementById("exciseAmt").value=Math.round(exiseamt);
			
			
		}
		
		if(json[0].suppVat=="YES")
		{
			 $("#vatdiv").show();
			 var vatamt=(parseFloat(document.getElementById("bTotal").value)+parseFloat(document.getElementById("exciseAmt").value))*0.125;
				document.getElementById("vatAmt").value=Math.round(vatamt);
				
			var netAmt=parseFloat(document.getElementById("bTotal").value)+parseFloat(document.getElementById("exciseAmt").value)+parseFloat(document.getElementById("vatAmt").value)
			document.getElementById("netAmt").value= Math.round(netAmt);
		}
		if(json[0].suppServiceTax=="YES")
		{
			 $("#servicetaxdiv").show();
		}
		
	
		
	  })
.fail(function( jqxhr, textStatus, error ) {
alert("fail");
	});

}

//End

//hiding taxex which are not applicable
function hide() {

	 $("#gstdiv").hide();
	 $("#vatdiv").hide();
	 $("#cstdiv").hide();
	 $("#excisediv").hide();
	 $("#servicetaxdiv").hide();

	
}

//End



//get Basic total of purchase item
function  getBasicAmt()
{
	var pono=$("#poNumber").val();
	$.getJSON('getPoBaicAmt.html',{pono:pono}).done(function(json) {
		
		
		document.getElementById("bTotal").value=json[0].bTotal;
		getApplyeTaxOfSupplier();
	
		
	  })
.fail(function( jqxhr, textStatus, error ) {
alert("fail");
	});
	
	
}

//end






function print()
{
	location.href="getPODetailReport.html"
}


//end

</script>
