<fieldset class="fieldset-style">
 <form role="form" action="getcustInvoiceDetail.html"> 
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Search Invoice For</div>
						<div class="span2" align="right">
							<!-- <input type="submit" class="icon-search" value="" id="btnsave" /> -->
							<!-- <button type="submit" class="btn">
  								<i class="icon-search"></i>
							</button> -->
							<div class="btn" onclick="getCustomerInvoiceNoLst()" title="Search">
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
								<input type="text" class="form-control" name="custName" id="custName" placeholder="" />
							</div>
						</div>
						
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">Select Invoice No</label>
							<div class="controls">
								<select class="form-control" name="invoiceNo" id="invoiceNo" onchange="this.form.submit()">
									<option>-Select--</option>
								</select>
							</div>
						</div>
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
								
											
					</div>
				</div>
			</div>
		</div>
		</div>
	  </form>
	 
	 
	 <!-- //2 Pannel -->
	 
	 <div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Invoice Detail</div>
						
					</div>
				</div>
			</div>

			<div class="container-fluid panel-body">
				<div class="row-fluid search-align">
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">PO No.</label>
							<div class="controls">
								<input type="text" class="form-control" id="poNumber" name="poNumber" value="${mobj.orderNo}" readonly="readonly">
							</div>
						</div> 
						<div class="control-group">
							<label class="control-label">Invoice Date</label>
							<div class="controls">
								<input type="text" class="form-control" id="invoiceDate" readonly="readonly" name="invoiceDate" value="${mobj.invoiceDate}"  placeholder="" />
							</div>
						</div> 
						
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">PO Date</label>
							<div class="controls">
								<input type="text" class="form-control" id="poDate" readonly="readonly" value="${mobj.orderDate}"   name="poDate"  placeholder="" />
							</div>
						</div>
						
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
								
						
						<div class="control-group">
							<label class="control-label">Invoice No.</label>
							<div class="controls">
								<input type="text" class="form-control"  id="invoiceNo" name="invoiceNo" value="${mobj.invoiceNo}" readonly="readonly"  value="${invoiceno}" placeholder="" />
							</div>
						</div>
											
					</div>
				</div>
			</div>
		</div>
		</div>
		
		
		<!-- 3 pannel -->
		
		 <div class="form-horizontal">
		<div class="panel panel-default">
			<!-- <div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Item Detail</div>
						
					</div>
				</div>
			</div> -->
			
			<div class="panel-body">
				<div class="singleline-records">
						<table class="table table-bordered insideform" style="font-size: 12px;">
									<thead style="font-size: 12px;">
										<tr bgcolor="#84939f">
											<th>Sr No</th>
											<th>Item Code</th>
											<th>Item Desc</th>
											<th>Qty</th>
											<th>Unit</th>
											<th>Rate</th>
											<th>Amount</th>
										</tr>
									</thead>
									<tbody style="font-size: 12px;">
										
											<c:if test="${not empty invoiceitemdetaillst}">
												<% int i=1;
												%>
             		           					<c:forEach var="listValue" items="${invoiceitemdetaillst}">
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
             		           						<td>${listValue.srno}</td>
             		           						<td>${listValue.itemCode}</td>
             		           						<td>${listValue.itemDesc}</td>
             		           						<td>${listValue.itemQty}</td>
             		           						<td>${listValue.unit}</td>
             		           						<td>${listValue.itemRate}</td>
             		           						<td>${listValue.itemAmt}</td>
             		           					
             		           					</tr>
												</c:forEach>
											</c:if>
										
									</tbody>
								</table>
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
								<input type="text"  name="bTotal" id="bTotal" value="${mobj.bTotal}" class="form-control" placeholder="" readonly="readonly" />
							</div>
						</div> 
						<div class="control-group">
							<label class="control-label">Final Amount</label>
							<div class="controls">
								<input type="text" class="form-control" placeholder="" id="netAmt" name="netAmt" value="${mobj.netAmt}" onblur="converWordToRs()" readonly="readonly"/>
							</div>
						</div> 
						
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">Excise 12.5%</label>
							<div class="controls">
								<input type="text" id="exciseAmt" name="exciseAmt" value="${mobj.exciseAmt}" class="form-control" value="0" placeholder="" readonly="readonly"/>
							</div>
						</div>
						
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
								
						
						<div class="control-group">
							<label class="control-label">Vat 12.5%</label>
							<div class="controls">
								<input type="text" id="vatAmt" name="vatAmt" value="${mobj.vatAmt}" class="form-control" placeholder="" readonly="readonly" />
							</div>
						</div>
											
					</div>
					
				</div>
				
			</div>
			
		</div>
		</div>
		
		
		<div class="panel-body">
				
		</div>
	 
	</fieldset>
	
	
	<script type="text/javascript">

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



function getCustomerInvoiceNoLst()
{
	var custName=document.getElementById("custName").value;
	var custinvoiceList;
			jQuery.ajax({
		 	url: "getJsonCustInvoicenoList.html?name="+custName,
			type: "POST",

		  	dataType: "json",
			async: false,
				success: function (data1) {
					custinvoiceList = data1
					
					
  					$('#invoiceNo').empty();
					$('#invoiceNo').append('<option value="">Select</option>');
 					 for (i in custinvoiceList) {
 						
   			   $('#invoiceNo').append('<option value="' + custinvoiceList[i].invoiceNo + '">' +custinvoiceList[i].invoiceNo + '</option>');
  				}
			 		}
	
				});
	
}



</script>
