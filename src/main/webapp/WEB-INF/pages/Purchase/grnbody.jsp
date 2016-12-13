<body onload="hide()">
<fieldset class="fieldset-style">
<form role="form" action="updateGrn.html" method="post">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">GRN Entry</div>
						<div class="span2" align="right">
								<div class="btn" onclick="getapprovedPo()" title="Search">
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
								<input type="text" id="suppName" name="suppName" value="${supplierdetail.suppName}"  class="form-control" placeholder="" />
							</div>
						</div>
						
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
					
					
					
						<div class="control-group">
							<label class="control-label">PO No.</label>
							<div class="controls">
									<select class="form-control" name="poNumber" id="poNumber" ></select>
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
								<input type="text" class="form-control" placeholder="" id="poDate" name="poDate" readonly="readonly"/>
							</div>
						</div> 
								
											
					</div>
				</div>
			</div>

	  
	 
	 
	 <!-- //2 Pannel -->
	 	
	<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Rm Item Detail</div>
							<div class="span3" align="right">
							<input type="submit" class="btn-save" value="" id="btnsave" title="Add Purchase Item">
							</div>
					</div>
					
					
					
				</div>
			</div>	
	 
	<div class="container-fluid panel-body">
				<div class="row-fluid search-align">
				
			<div class="firstquad">
				<div class="control-group">
							<label class="control-label">RM Item Code</label>
								<div class="controls">
									<select class="form-control" name="rmitemcode" id="rmitemcode">
									<option></option>
								</select>
							</div>
					</div> 
					
					
					<div class="control-group">
							<label class="control-label">Received Qty</label>
							<div class="controls">
									<input type="text" class="form-control" placeholder="" name="receivedQty" id="receivedQty" onblur="calc()"/>
							</div>
						</div> 
						
						
						<div class="control-group">
							<label class="control-label">Remaining Qty</label>
							<div class="controls">
								<input type="text" class="form-control" id="remainQty" name="remainQty" placeholder="" />
							</div>
						</div> 
						
					
					
				</div>
				
				<div class="firstquad">
				
				<div class="control-group">
							<label class="control-label">PO Qty</label>
							<div class="controls">
									<input type="text" class="form-control" name="qty" id="qty" placeholder="" readonly="readonly"/>
							</div>
				</div> 
				
				
				<div class="control-group">
							<label class="control-label">Accepted Qty</label>
							<div class="controls">
									<input type="text" class="form-control" id="inspectedQty" name="inspectedQty" placeholder="" />
							</div>
				</div> 
				
				
				
						<div class="control-group">
							<label class="control-label">RM Location</label>
							<div class="controls">
								<input type="text" class="form-control" id="rmlocation" name="rmlocation" placeholder="" />
							</div>
						</div> 
				
					
						
						
				</div>		
						
				<div class="firstquad">		
							<div class="control-group"><label class="control-label">Pending Qty</label>
							<div class="controls">
									<input type="text" readonly="readonly" class="form-control" placeholder="" name="pendingQty" id="pendingQty"/>
							</div>
						</div>
						
						<div class="control-group"><label class="control-label">Rejected Qty</label>
							<div class="controls">
									<input type="text" class="form-control" placeholder="" name="rejectedQty" id="rejectedQty" onblur="calc()"/>
							</div>
				</div>
						
						
											
			
				</div>		

	
		</div>
		</div>
	
	</form>
	
	</fieldset>
</body>

<script>


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



function getapprovedPo()
{
	
	var name=document.getElementById("suppName").value;

			var pendingpolst;
			jQuery.ajax({
		 	 url: "getapprovedpolst.html?name="+name,
				 type: "POST",

		  	dataType: "json",
			async: false,
				success: function (data) {
					approvedpolst = data
					
  					$('#poNumber').empty();
					   	$('#poNumber').append('<option value="">Select</option>');
 					 for (i in approvedpolst) {
		
   			   $('#poNumber').append('<option value="' + approvedpolst[i].poNumber + '">' +approvedpolst[i].poNumber + '</option>');
  				}
			 		}
	
				});	
	
}


$(document).ready(function(){
	$('#poNumber').change(function(event){
	
		var no=document.getElementById("poNumber");
		var poNumber = no.options[no.selectedIndex].value;
		
		
	
  		$.getJSON('getpodate.html',{poNumber:poNumber}).done(function(json) {
  			
  			
  			document.getElementById("poDate").value=json[0].poDate;
  			
  			getpopendingItems();
  		
  	  })
.fail(function( jqxhr, textStatus, error ) {
alert("fail");
});
});
});



function getpopendingItems()
{
	
	var no=document.getElementById("poNumber");
	var poNumber = no.options[no.selectedIndex].value;

			var pendingpolst;
			jQuery.ajax({
		 	 url: "getpendingPoItems.html?poNumber="+poNumber,
			type: "POST",
			dataType: "json",
			async: false,
				success: function (data) {
					pendingpoitemslst = data
					
  					$('#rmitemcode').empty();
					   	$('#rmitemcode').append('<option value="">Select</option>');
 					 for (i in pendingpoitemslst) {
		
   			   $('#rmitemcode').append('<option value="' + pendingpoitemslst[i].itemcode + '">' +pendingpoitemslst[i].itemcode + '</option>');
  				}
			 		}
	
				});	
	
}



$(document).ready(function(){
	$('#rmitemcode').change(function(event){
	
		var item=document.getElementById("rmitemcode");
		var itemcode =item.options[item.selectedIndex].value;
		
		var no=document.getElementById("poNumber");
		var poNumber = no.options[no.selectedIndex].value;
		
		
	
  		$.getJSON('getpoorderqty.html',{poNumber:poNumber,itemcode:itemcode}).done(function(json) {
  			
  			
  			document.getElementById("qty").value=json[0].qty;
  			
  			getpopendingoty();
  		
  	  })
.fail(function( jqxhr, textStatus, error ) {
alert("fail");
});
});
});


function getpopendingoty()
{
	var item=document.getElementById("rmitemcode");
	var itemcode =item.options[item.selectedIndex].value;
	
	var no=document.getElementById("poNumber");
	var poNumber = no.options[no.selectedIndex].value;

	$.getJSON('getpendingpoqty.html',{poNumber:poNumber,itemcode:itemcode}).done(function(json) {
		
			
		document.getElementById("pendingQty").value=json[0].pendingQty;
	
		
	  })
.fail(function( jqxhr, textStatus, error ) {
alert("fail");
});
	
}


function calc()
{
		var pendingqty=document.getElementById("pendingQty").value
		var amt=parseFloat(document.getElementById("pendingQty").value)-parseFloat(document.getElementById("inspectedQty").value);
		document.getElementById("remainQty").value=amt;
	
}


</script>
