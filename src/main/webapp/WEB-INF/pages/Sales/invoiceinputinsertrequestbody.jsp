<body onload="hide()">
<fieldset class="fieldset-style">
<form role="form" action="saveInvoice.html" method="post">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Create Invoice</div>
						<div class="span2" align="right">
							<!-- <input type="submit" class="icon-search" value="" id="btnsave" /> -->
							<!-- <button type="submit" class="btn">
  								<i class="icon-search"></i>
							</button> -->
							<div class="btn" onclick="getcustPoNoforInvoice()" title="Search">
								<i class="icon-search"></i>
							</div>
							<!-- <input type="button" class="icon-search"   /> -->
							
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
								<!-- <input type="text" class="form-control" name="custName" id="custName" placeholder="" /> -->
								<input type="text" class="form-control" name="custName" id="custName" placeholder="" required="required"/>
							</div>
						</div>
						
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						
						<!-- <div class="control-group">
							<label class="control-label">Select Invoice No</label>
							<div class="controls">
								<select class="form-control" name="invoiceNo" id="invoiceNo" onchange="this.form.submit()">
									<option>-Select--</option>
								</select>
							</div>
						</div> -->
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
								
											
					</div>
				</div>
			</div>
		</div>
		</div>
	  
	 
	 
	 <!-- //2 Pannel -->
	 
	 <div class="form-horizontal">
		<div class="panel panel-default">
		<!-- 	<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Invoice Detail</div>
						
					</div>
				</div>
			</div> -->

			<div class="container-fluid panel-body">
				<div class="row-fluid search-align">
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">PO No.</label>
							<div class="controls">
								<select class="form-control" id="poNumber" name="poNumber" onchange="getPodate()">
									<option></option>
								</select>
							</div>
						</div> 
						 <div class="control-group">
							<label class="control-label">Invoice Date</label>
							<div class="controls">
								<input type="text" class="form-control" id="invoiceDate" readonly="readonly" name="invoiceDate"   placeholder="" />
							</div>
						</div>  
						
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">PO Date</label>
							<div class="controls">
								<input type="text" class="form-control" id="poDate" readonly="readonly"  name="poDate"  placeholder="" />
							</div>
						</div>
						
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
								
						
						<div class="control-group">
							<label class="control-label">Invoice No.</label>
							<div class="controls">
								<input type="text" class="form-control"  id="invoiceNo" name="invoiceNo" readonly="readonly"  value="${invoiceno}" placeholder="" />
							</div>
						</div>
											
					</div>
				</div>
			</div>
		</div>
		</div>
		
		<!-- // pannel 3  -->
		
		 <div class="form-horizontal">
		<div class="panel panel-default">
		<!-- 	<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Invoice Detail</div>
						
					</div>
				</div>
			</div> -->

			<div class="container-fluid panel-body">
				<div class="row-fluid search-align">
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">Item Code</label>
							<div class="controls">
								<select class="form-control" id="itemCode" name="itemCode" onchange="getItemDetail()">
									<option></option>
								</select>
							</div>
						</div> 
						  <div class="control-group">
							<label class="control-label">Qty</label>
							<div class="controls">
								<input type="text" class="form-control" name="itemQty" id="itemQty"  placeholder="" onblur="checkQty()"/>
							</div>
						</div> 
						<div class="control-group">
							<label class="control-label">Amount</label>
							<div class="controls">
								<input type="text" class="form-control" id="itemAmt" name="itemAmt" readonly="readonly"  placeholder="" />
							</div>
						</div> 
						
						
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">Item Desc</label>
							<div class="controls">
								<input type="text" class="form-control"  readonly="readonly" name="itemDesc" id="itemDesc" placeholder="" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Unit</label>
							<div class="controls">
								<input type="text" class="form-control"  readonly="readonly" id="unit" name="unit"  placeholder="" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label"></label>
							<div class="controls">
								<input type="button" class="btn btn-success" value="Add" onclick="addInvoiceItems()"/>
							</div>
						</div>
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
								
						
						<div class="control-group">
							<label class="control-label">PO Qty</label>
							<div class="controls">
								<input type="text" class="form-control" name="poQty" id="poQty"  placeholder="" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Rate</label>
							<div class="controls">
								<input type="text" class="form-control"  id="itemRate" readonly="readonly"  name="itemRate" placeholder="" />
							</div>
						</div>
											
					</div>
				</div>
			</div>
		</div>
		</div>
		
		<!-- 4 pannel -->
		
		 <div class="form-horizontal">
		<div class="panel panel-default">
			<!-- <div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Item Detail</div>
						
					</div>
				</div>
			</div> -->
			
				<div class="container-fluid panel-body" style="width: 90% !important; margin-left: 15px !important;">
				<div class="row-fluid search-align">
				<div class="dataTable_wrapper">
						 <table class="table table-striped table-bordered table-hover insideform" style="font-size: 12px;" id="invoiceitemtable" > 
						
									<thead style="font-size: 12px;">
										<tr bgcolor="#84939f">
											<th>Sr No</th>
											<th >Item Code</th>
											<th >Item Desc</th>
											<th >Qty</th>
											<th >Unit</th>
											<th >Rate</th>
											<th >Amount</th>
										</tr>
									</thead>
									<tbody style="font-size: 12px;">
									</tbody>
									
								</table>
								</div>
				</div>
				</div>
		</div>
		</div>
		
		
		<!-- 4 pannel -->
		
		  <div class="form-horizontal">
		<div class="panel panel-default">
			<!-- <div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Invoice Detail</div>
						
					</div>
				</div>
			</div> -->

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
								<input type="text" id="cstAmt" name="cstAmt" class="form-control" placeholder="" />
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
								<input type="text" id="exciseAmt" name="exciseAmt"  class="form-control" value="0" placeholder="" />
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
								<input type="text" id="vatAmt" name="vatAmt"  class="form-control" placeholder="" />
							</div>
						</div>
						<div class="control-group" id="servicetaxdiv">
							<label class="control-label">Service Tax</label>
							<div class="controls">
								<input type="text" id="serviceTaxAmt" name="serviceTaxAmt" class="form-control" placeholder="" />
							</div>
						</div>
											
					</div>
					
				</div>
				
			</div>
		
		</div>
		</div>
		
		
		<div class="panel-body">
				<input type="submit" class="btn btn-success" value="Submit" />&nbsp;
								<input type="button" class="btn btn-default" value="Cancel" />
		</div>
	</form>
	
	</fieldset>
</body>

<script>
$(document).ready(function() {

    $(function() {
    	
            $("#custName").autocomplete({     
            source : function(request, response) {
            $.ajax({
                    url : "getCustNameList.html",
                    type : "GET",
                    data : {
                            term : request.term
                    },
                    dataType : "json",
                    success : function(data) {
                            response(data);
                    },
                            error: function(jqxhr,textStatus,errorThrown)
                            {
                                console.log(jqxhr);
                                    console.log(textStatus);
                                    console.log(errorThrown);                               

                                    for (key in jqxhr)
                                        alert(key + ":" + jqxhr[key])                                                                 
                                    for (key2 in textStatus)
                                        alert(key + ":" + textStatus[key])
                                    for (key3 in errorThrown)
                                        alert(key + ":" + errorThrown[key])

                           //<--- All those logs/alerts, don't say anything helpful, how can I understand what error is going on? ---->

                        }});
    }
});
});
});


function getcustPoNoforInvoice()
{
	
	var name=document.getElementById("custName").value;

			var pendingpolst;
			jQuery.ajax({
		 	 url: "getcustPoNoforInvoice.html?name="+name,
				 type: "POST",

		  	dataType: "json",
			async: false,
				success: function (data) {
					pendingpolst = data
					
  					$('#poNumber').empty();
					   	$('#poNumber').append('<option value="">Select</option>');
 					 for (i in pendingpolst) {
		
   			   $('#poNumber').append('<option value="' + pendingpolst[i].poNo + '">' +pendingpolst[i].poNo + '</option>');
  				}
			 		}
	
				});
			
		
			
	
}



function getPodate()
{
	var pono=$("#poNumber").val();
	$.getJSON('getPoDate.html',{pono:pono}).done(function(json) {
		
		
		document.getElementById("poDate").value=json[0].poDate;
	
		
	  })
.fail(function( jqxhr, textStatus, error ) {
alert("fail");
	});
	
	
	getCompletedItemLst()
	
}


function getCompletedItemLst()
{
	
	var pono=$("#poNumber").val();

	var pendingpolst;
	jQuery.ajax({
 	 url: "getCompletedItemLst.html?pono="+pono,
		 type: "POST",

  	dataType: "json",
	async: false,
		success: function (data) {
			completedItemlst = data
			
				$('#itemCode').empty();
			   	$('#itemCode').append('<option value="">Select</option>');
				 for (i in completedItemlst) {

		   $('#itemCode').append('<option value="' + completedItemlst[i].itemCode + '">' +completedItemlst[i].itemCode + '</option>');
			}
	 		}

		});
	
}


function getItemDetail()
{
	
	var pono=$("#poNumber").val();
	var itemCode=$("#itemCode").val();
	
	$.getJSON('getPoDetail.html',{pono:pono,itemCode:itemCode}).done(function(json ) {
		
		
			document.getElementById("itemDesc").value=json[0].itemDesc;
			document.getElementById("unit").value=json[0].qty;
			document.getElementById("unit").value=json[0].unit;
			document.getElementById("itemRate").value=json[0].rate;
			document.getElementById("itemAmt").value=json[0].amt;
			document.getElementById("poQty").value=json[0].qty;
	
		
	  })
.fail(function( jqxhr, textStatus, error ) {
alert("fail");
	});
	
	
}






function getApplyeTaxOfCustomer()
{
	
	var custName=$("#custName").val();

	$.getJSON('getApplyeTaxOfCustomer.html',{custName:custName}).done(function(json) {
		
	
		
		if(json[0].custGst=="YES")
		{
			
			 $("#gstdiv").show();
		}
	
		
		if(json[0].custCst=="YES")
		{ 
			
			 $("#cstdiv").show();
		}
		
		if(json[0].custExcise=="YES")
		{
			$("#excisediv").show();
			var exiseamt=parseFloat(document.getElementById("bTotal").value)*0.125;
			document.getElementById("exciseAmt").value=Math.round(exiseamt);
			
		}
		if(json[0].custVat=="YES")
		{
			 $("#vatdiv").show();
			 var vatamt=(parseFloat(document.getElementById("bTotal").value)+parseFloat(document.getElementById("exciseAmt").value))*0.125;
				document.getElementById("vatAmt").value=Math.round(vatamt);
				
			var netAmt=parseFloat(document.getElementById("bTotal").value)+parseFloat(document.getElementById("exciseAmt").value)+parseFloat(document.getElementById("vatAmt").value)
			document.getElementById("netAmt").value= Math.round(netAmt);
			
		}
		
		if(json[0].custServiceTax=="YES")
		{
			 $("#servicetaxdiv").show();
		}
		converWordToRs();
	
		
	  })
.fail(function( jqxhr, textStatus, error ) {
alert("fail");
	});

}




function hide() {

	 $("#gstdiv").hide();
	 $("#vatdiv").hide();
	 $("#cstdiv").hide();
	 $("#excisediv").hide();
	 $("#servicetaxdiv").hide();
	 
	 date()

	
}

function date()
{
		
		$("#invoiceDate").val($.datepicker.formatDate("dd/mm/yy", new Date()));
}

$(document).ready(function() {
    $('#invoiceitemtable').DataTable({
    	  "sPaginationType": "full_numbers",
          "bJQueryUI": true
    });
});






function addInvoiceItems()
{

	var invoiceNo=$("#invoiceNo").val();
	var itemCode=$("#itemCode").val();
	var itemDesc=$("#itemDesc").val();
	var itemQty=$("#itemQty").val();
	var unit=$("#unit").val();
	var itemRate=$("#itemRate").val();
	var itemAmt=$("#itemAmt").val();
	var custName=document.getElementById("custName").value;
    
	var poNumber=$("#poNumber").val();
    $('#invoiceitemtable').dataTable( {
		"ajax": 'addInvoiceItems.html?invoiceNo='+invoiceNo+'&itemCode='+itemCode+'&itemDesc='+itemDesc+'&itemQty='+itemQty+'&unit='+unit+'&itemRate='+itemRate+'&itemAmt='+itemAmt+'&custName='+custName+'&poNumber='+poNumber,
		
		"columns": [
		           
					{ "data": "srno"},
					{ "data": "itemCode"},
					{ "data": "itemDesc"},
					{ "data": "itemQty"},
					{ "data": "unit"},
					{ "data": "itemRate"},
					{ "data": "itemAmt"},
				
					
				],
				"destroy" : true,
				"language": {
					           "emptyTable": "<font  color=red><I>No Items</I></font>"
					         },
					       
	});
    
    getBasicAmt();
    
	
}



function  getBasicAmt()
{
	var invoiceNo=$("#invoiceNo").val();
	$.getJSON('getInvoiceBamt.html',{invoiceNo:invoiceNo}).done(function(json) {
		
		
		document.getElementById("bTotal").value=json[0].bTotal;
	
		
	  })
.fail(function( jqxhr, textStatus, error ) {
alert("fail");
	});
	
	getApplyeTaxOfCustomer();
	
	
}





$(document).ready(function () {
    var d = new Date(),
        date = (d.getUTCFullYear())+'/'+(d.getUTCMonth()+1)+'/'+(d.getUTCDate());

    $('#invoiceDate').datetimepicker({             
        mask: true,
        timepicker: false,
        format: 'Y/m/d',
        value: date
    });           
});



function caluculateAmt() {
	var amt=parseFloat(document.getElementById("itemQty").value)*parseFloat(document.getElementById("itemRate").value);
	document.getElementById("itemAmt").value=amt;
	
}



function checkQty()
{
	
		
		var custName=document.getElementById("custName").value;

		var code=document.getElementById("itemCode");
		var itemCode = code.options[code.selectedIndex].value;
		
		var no=document.getElementById("poNumber");
		var poNumber = no.options[no.selectedIndex].value;
		
		
  		$.getJSON('checkinvoiceqty.html',{custName:custName,itemCode:itemCode,poNumber:poNumber}).done(function(json ) {
  		
  		
  			var pendingqty=json[0].itemQty;
  			var itemqty=parseFloat(document.getElementById("itemQty").value);
  			var itemqty=parseFloat(document.getElementById("itemQty").value);
  			var poqty=parseFloat(document.getElementById("poQty").value);
  			
  			var remainqty=poqty-parseFloat(pendingqty);
  			
  			
  			if(itemqty>remainqty)
				{
					alert("Invoice Already Made Item Code Of"+pendingqty)
					document.getElementById("itemQty").value="0";
				}
  				if(itemqty>poqty)
  				{
  					alert("Item Qty Should Not Be Greater than PO Qty")
  					document.getElementById("itemQty").value="0";
  				}
  			
  			
  			
  			
  		
  	  })
.fail(function( jqxhr, textStatus, error ) {
alert("fail");
});
}


</script>
