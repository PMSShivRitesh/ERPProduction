
<body>
<fieldset class="fieldset-style">
<form role="form" action="savePaymentEntry.html" >
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Customer Payment Entry</div>
						<div class="span3" align="right">
						
						
							
							
							<button type="submit" class="btn-save" title="Save Payment Entry" >
  								
							</button>
							<div class="btn" title="Customer Balance Sheet" onclick="custBalanceShhet()" id="btnclear">
								<i class="icon-list-alt"></i>
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
						
						<input type="text" name="custName"   id="custName" class="form-control" required="required" placeholder="" onblur="getInvoiceNoList()"/>
							</div>
						</div>
					</div>
					
					<div class="firstquad">
						
						
						
					 <div class="control-group">
							<label class="control-label">Invoice No</label>
							<div class="controls">
								<select class="form-control" name="invoiceno"  id="invoiceno" ></select>
							</div>
						</div>
					
					</div>
					
					
					<div class="firstquad">
						
								
						<div class="control-group">
							<label class="control-label">Bill Amount</label>
							<div class="controls">
						<input type="text" name="billamt"  id="billamt" class="form-control" readonly="readonly" />
							</div>
						</div>
						
					</div>
					
					
					
			</div>
			
				<div class="row-fluid search-align">
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">Received.</label>
							<div class="controls">
						<input type="text" name="received"  id="received" class="form-control" required="required" readonly="readonly" placeholder=""  />
							</div>
						</div>
					</div>
					
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">Pending</label>
							<div class="controls">
						<input type="text" name="pending" id="pending" class="form-control" required="required" readonly="readonly" placeholder=""  />
							</div>
						</div>
					</div>
					
					
					
						<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">Credit</label>
							<div class="controls">
						<input type="text" name="credit" id="credit" class="form-control" required="required"  placeholder="" onblur="calculateBalance()" />
							</div>
						</div>
					</div>
					
			</div>
			
			<div class="row-fluid search-align">
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">Payment Mode</label>
							<div class="controls">
								<select class="form-control" name="payMode"  id="payMode">
									<option value="Cheque">Cheque</option>
									<option vaue="cash">cash</option>
								</select>
							</div>
						</div>
					</div>
					
					<div class="firstquad">
						
							
						<div class="control-group">
							<label class="control-label">Balance</label>
							<div class="controls">
						<input type="text" name="balance" id="balance" class="form-control" required="required"  placeholder="" readonly="readonly" />
							</div>
						</div>
					</div>
						
					</div>
					
					
					
						<div class="firstquad">
						
						
					</div>
					
			</div>
</div>
	
	</div>
	
	
	
			</fieldset>

<script type="text/javascript">			

function getInvoiceNoList()
{
	
	var custName=document.getElementById("custName").value;
	
			if(custName!=""){	
			var List;
			jQuery.ajax({
		 	url: "dchallaninvoicenolst.html?custName="+custName+"&status=Created",
			type: "POST",
			dataType: "json",
			async: false,
				success: function (data) {
					List = data
					
  					$('#invoiceno').empty();
					   	$('#invoiceno').append('<option value="">--Select--</option>');
 					 for (i in List ) {
		
   			 		  $('#invoiceno').append('<option value="' + List[i]+ '">' +List[i] + '</option>');
  				}
			 		}
	
				});
			
			}
			
	
}


$(document).ready(function(){
	$('#invoiceno').change(function(event){
		var invoiceno=document.getElementById("invoiceno").value;
			$.getJSON('dchallaninvoiceamt.html',{invoiceno:invoiceno}).done(function(json ) {
  			document.getElementById("billamt").value=json;
  			
  			$.getJSON('getCustCreditedAmt.html',{invoiceno:invoiceno}).done(function(json ) {
  				if(json==""){
  					document.getElementById("received").value="0.00";
  				}
  				else{
  					document.getElementById("received").value=json;
  				}
  	  			
  	  			document.getElementById("pending").value=(document.getElementById("billamt").value)-json;
  	  }) })
.fail(function( jqxhr, textStatus, error ) {
alert("fail");
});
});
});


function calculateBalance(){

	document.getElementById("balance").value=(document.getElementById("pending").value)-(document.getElementById("credit").value);
}

function custBalanceShhet(){
	location.href="custInvoiceBalanceSheetForm.html"
}


    


</script>