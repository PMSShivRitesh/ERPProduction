
<fieldset class="fieldset-style">
<form role="form" action="dchallaninvoicedisplay.html" method="post">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Create D.Challan Invoice</div>
						<div class="span2" align="right">
							<!-- <input type="submit" class="icon-search" value="" id="btnsave" /> -->
							<!-- <button type="submit" class="btn">
  								<i class="icon-search"></i>
							</button> -->
							<div class="span2" align="right">
							<input type="button" class="btn-save" value="" id="btnsave" onclick="createDchallanInvoice()" title="Create Invoice Of D.Challan" />
							
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
							
								<input type="text" class="form-control" name="custName"  id="custName"  value="${custName}" required="required" onblur="getDChallannolst()"/>
							</div>
						</div>
						
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">D.Challa No</label>
							<div class="controls">
								<select class="form-control"  id="dchallanno1" name="dchallanno1" onchange="this.form.submit()"></select>
							</div>
						</div> 
						
						
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
						 <div class="control-group">
							<label class="control-label">Invoice Date</label>
							<div class="controls">
								<input type="text" class="form-control" id="invoiceDate" name="invoiceDate"   placeholder="" />
							</div>
						</div>  		
											
					</div>
				</div>
			</div>
			
			 <div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">D.Challan Detail</div>
						<div class="span3" align="right">
							
						</div>
					</div>	
				</div>
			</div>	
			
			
			
		
		<div class="container-fluid panel-body">
				<div class="row-fluid search-align">
					<div class="firstquad">
					
						
						
						
						 <div class="control-group">
							<label class="control-label">D.Challan No</label>
							<div class="controls">
									<input type="text" class="form-control" id="dchallanNo"  value="${dchallanno}" readonly="readonly" name="dchallanNo"   placeholder="" />
							</div>
					
				
						
						 
					</div>
					</div>
	
					
					
					<!-- 2 Column -->	
					
					<div class="firstquad">
					
					<div class="control-group">
							<label class="control-label">D.Challan Date</label>
							<div class="controls">
								<input type="text" name="dchallandate" id="dchallandate" required="required"  value="${dchllanobj.dchallandate}" readonly="readonly"
			id="itemDesc" class="form-control" placeholder="" />
							</div>
						</div>
						
						
					
						
				</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
						
						
						
					<div class="control-group">
							<label class="control-label">D.Challan Type</label>
							<div class="controls">
								<input type="text" name="itemDesc" required="required"  value="${dchllanobj.dchallantype}" readonly="readonly"
			id="itemDesc" class="form-control" placeholder="" />
							</div>
						</div>
						
							
					
							
								
				</div>
			</div>
		</div>
	 	
	 	
	 	 <div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">D.Challan Item Detail</div>
						<div class="span3" align="right">
							
						</div>
					</div>	
				</div>
			</div>	
		
			<div class="panel-body">
				<div class="singleline-records">
						<table class="table table-bordered insideform" style="font-size: 12px;" id="dchallaninvoicetable">
									<thead style="font-size: 12px;">
										<tr bgcolor="#84939f">
												<th>Sr No.</th>
												<th>Item Code</th>
												<th>Qty</th>
												<th>Rate</th>
												<th>Amount</th>
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
             		           					
             		           						%>
             		           						<td><%=i %></td>
             		           						<% i++;
             		           					%>
             		           						<td>${listValue.itemCode}</td>
             		           					
             		           					
             		           						<td>${listValue.qty}</td>
             		           						<td>${listValue.rate}</td>
             		           						<td>${listValue.amount}</td>
             		           					
             		           					
             		           					</tr>
												</c:forEach>
											</c:if>
								</table>
				
				</div>
				
			</div>
				
				
	 	 <div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Amount Detail</div>
						<div class="span3" align="right">
							
						</div>
					</div>	
				</div>
			</div>	
		<div class="container-fluid panel-body">
				<div class="row-fluid search-align">
					<div class="firstquad">
				
						<div class="control-group">
							<label class="control-label">Basic Total</label>
							<div class="controls">
								<input type="text"  name="basicTotal" id="basicTotal" class="form-control"  placeholder="" readonly="readonly" />
							</div>
						</div> 
						<c:choose>
						<c:when test="${custdetail.custcst=='YES'}">
							<div class="control-group" id="cstdiv">
							<label class="control-label">CST</label>
							<div class="controls">
									<input type="text" id="cstAmt" name="cstAmt" class="form-control" placeholder="" />
							</div>
						</div> 
						</c:when> 
						</c:choose>
					
						
					
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
					<c:choose>
						<c:when test="${custdetail.custexcise=='YES'}">
						<div class="control-group" id="excisediv">
							<label class="control-label">Excise 12.5%</label>
							<div class="controls">
								<input type="text" id="exciseAmt" name="exciseAmt"  class="form-control" value="0" placeholder="" />
							</div>
						</div>
						</c:when>
						</c:choose>
						<c:choose>
						<c:when test="${custdetail.custgst=='YES'}">
						<div class="control-group" id="gstdiv">
							<label class="control-label">GST</label>
							<div class="controls">
								<input type="text" class="form-control" placeholder="" />
							</div>
						</div>
						</c:when>
						</c:choose>
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
							<c:choose>	
						<c:when test="${custdetail.custvat=='YES'}">
						<script>
							
						</script>
						<div class="control-group" id="vatdiv">
							<label class="control-label">Vat 12.5%</label>
							<div class="controls">
								<input type="text" id="vatAmt" name="vatAmt" readonly="readonly" class="form-control" placeholder="" ond  />
							</div>
						</div>
						</c:when>
						</c:choose>
						<c:choose>
						<c:when test="${custdetail.custservicetax=='YES'}">
						<div class="control-group" id="servicetaxdiv">
							<label class="control-label">Service Tax</label>
							<div class="controls">
							<input type="text" id="serviceTaxAmt" name="serviceTaxAmt" class="form-control" placeholder="" />
							</div>
						</div>
						</c:when>
						</c:choose>		
						
							<div class="control-group" id="cstdiv">
							<label class="control-label">Final Amount</label>
							<div class="controls">
								<input type="text" class="form-control"  readonly="readonly" placeholder="" id="grandTotal" name="grandTotal" onblur="converWordToRs()" />
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
getDChallannolst();
calculatevat();
function getDChallannolst()
{
	
	var custName=document.getElementById("custName").value;
	
	if(custName!=""){
			var List;
			jQuery.ajax({
		 	url: "getdchallannolst.html?custName="+custName+"&status=confirm",
			type: "POST",
			dataType: "json",
			async: false,
				success: function (data) {
					List = data
					
  					$('#dchallanno1').empty();
					   	$('#dchallanno1').append('<option value="">--Select--</option>');
 					 for (i in List ) {
 					
   			 		  $('#dchallanno1').append('<option value="' + List[i] + '">' +List[i] + '</option>');
  				}
			 		}
	
				});
			
	}	
			
	
}

function calculateTotal() 
{ 

		var sum=0;
		var oTable = document.getElementById("dchallaninvoicetable");
		 
		 var i;
		 
	     var rowLength = oTable.rows.length;
	     
	    
	    
		  for (i =1; i <rowLength; i++)
		  {
		      var oCells = oTable.rows.item(i).cells;
		      
		      sum=sum+parseFloat(oCells[4].firstChild.data);
		      
		     
		  }
		
		
		 document.getElementById("basicTotal").value =sum;
		
		  
}


function calculatevat()
{
	calculateTotal();
	 var vatamt=(parseFloat(document.getElementById("basicTotal").value)*0.125);
	document.getElementById("vatAmt").value=Math.round(vatamt);
	document.getElementById("grandTotal").value=Math.round(vatamt)+parseFloat(document.getElementById("basicTotal").value);
				
}


$(function() {
	   $( "#invoiceDate").datepicker();
	    $( "#invoiceDate").datepicker("show");	

});


function createDchallanInvoice() {
	

		// get the form values
	   	var custName = $('#custName').val();
	    var invoiceDate = $('#invoiceDate').val();
	    var dchallanNo = $('#dchallanNo').val();
	    var basicTotal = $('#basicTotal').val();
	    var grandTotal = $('#grandTotal').val();
	   
	  
	    $.ajax({
	    type: "POST",
	    url: "createdchallaninvoice.html",
	    data: "custName=" + custName + "&invoiceDate=" + invoiceDate+ "&dchallanNo=" + dchallanNo+ "&basicTotal=" + basicTotal+ "&grandTotal=" +grandTotal,
	    success: function(response){
	    // we have the response
	    $('#info').html(response);
	    getDChallannolst();
	 
	    },
	    error: function(e){
	    	//alert("Creating New Sales Order")
	    	//location.href="customerPurchaseOrderInputRequest.html";
	  
	    }
	    });
	    
		
		}
    
    




</script>
