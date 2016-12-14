<body onload="hide()">
<fieldset class="fieldset-style">
<form role="form" action="" method="post">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Purchase Order Detail</div>
						<div class="span2" align="right">
							
							<div class="btn" onclick="print()" title="Search Po Items">
								<i class="icon-print"></i>
							</div>
							
							<div class="btn" onclick="getpendingponum()" title="Search">
								<i class="icon-search"></i>
							</div>
							
							<div class="btn" align="left" title="Purchase Home" onclick="gethomepage()" >
							<i class="icon-home"></i>
							<!--  	<input type="button" class="glyphicon glyphicon-step-backward" value="Next" onclick="getNextForm()"/>-->
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
							<label class="control-label">Supplier Name</label>
							<div class="controls">
								<!-- <input type="text" class="form-control" name="custName" id="custName" placeholder="" /> -->
							<input type="text" class="form-control" placeholder="" name="suppName" id="suppName" />
							</div>
						</div>
						
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
					
					
					
						<div class="control-group">
							<label class="control-label">PO No.</label>
							<div class="controls">
								<select class="form-control" id="poNumber" name="poNumber" onchange="getPoDetail()">
									<option></option>
								</select>
							</div>
						</div> 
						
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
					
						<div class="control-group">
							<label class="control-label">PO Date</label>
							<div class="controls">
								<input type="text" class="form-control" id="poDate" name="poDate"  placeholder="" />
							</div>
						</div> 
								
											
					</div>
				</div>
			</div>
		</div>
		</div>
	  
	 
	
		
		
		

				<div class="container-fluid panel-body" style="width: 90% !important; margin-left: 15px !important;">
				<div class="row-fluid search-align">
				<div class="dataTable_wrapper">
						<!-- <table class="table table-bordered insideform" style="font-size: 12px;" id="invoiceitemtable"> -->
						 <table class="table table-striped table-bordered table-hover insideform" id="purchaseitemtable" > 
						
									<thead style="font-size: 12px;">
										<tr bgcolor="#84939f">
											<th>Item Code</th>
											<th>Item Desc</th>
											<th>Qty</th>
											<th>Unit</th>
											<th>Rate</th>
											<th>Amount</th>
										</tr>
									</thead>
									<tbody style="font-size: 12px;">
									</tbody>
									
								</table>
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


//Supplier Name Autocompleter

$(document).ready(function() {
    $(function() {
    	
            $("#suppName").autocomplete({     
            source : function(request, response) {
            $.ajax({
                    url : "getSuppNameList.html",
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

//End Supplier Name 


//Get Created Po No.List
function getpendingponum()
{
	
	var name=document.getElementById("suppName").value;

			var pendingpolst;
			jQuery.ajax({
		 	 url: "getapprovedpolst.html?name="+name,
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




//Datatable Itegration
$(document).ready(function() {
    $('#purchaseitemtable').DataTable({
    	  "sPaginationType": "full_numbers",
          "bJQueryUI": true,
         
          "bPaginate": false,  
          "bInfo": false,  
          "bFilter": false,
          "bAutoWidth": false,
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
    
    
    getallpodetail()
   
	
}

//End Datatable 


//Get PO amount detail
function  getallpodetail()
{
	var pono=$("#poNumber").val();
	$.getJSON('getpodetail.html',{pono:pono}).done(function(json) {
		
		
		document.getElementById("poDate").value=json[0].poDate;
		document.getElementById("bTotal").value=json[0].bTotal;
	
		document.getElementById("exciseAmt").value=json[0].exciseAmt;
		document.getElementById("vatAmt").value=json[0].vatAmt;
		document.getElementById("netAmt").value=json[0].netAmt;
	
		
	  })
.fail(function( jqxhr, textStatus, error ) {
alert("fail");
	});
	
	getApplyeTaxOfSupplier()
	
}



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
			
		}
		
		if(json[0].suppVat=="YES")
		{
			 $("#vatdiv").show();
		
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

//


function print()
		{
			var pono=document.getElementById("poNumber").value;
			location.href="getsupppojasper.html?pono="+pono
		}

</script>
