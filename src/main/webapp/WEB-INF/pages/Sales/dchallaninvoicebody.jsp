
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
							
								<input type="text" class="form-control" name="custName" id="custName" placeholder="" value="${custName}" required="required" onblur="getDChallannolst()"/>
							</div>
						</div>
						
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">D.Challa No</label>
							<div class="controls">
								<select class="form-control"  id="dchallanno" name="dchallanno" onchange="this.form.submit()"></select>
							</div>
						</div> 
						
						
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
						 <div class="control-group">
							<label class="control-label">Invoice Date</label>
							<div class="controls">
								<input type="text" class="form-control" id="invoiceDate" readonly="readonly" name="invoiceDate"   placeholder="" />
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
									<input type="text" class="form-control" id="invoiceDate" value="${dchallanno}" readonly="readonly" name="invoiceDate"   placeholder="" />
							</div>
					
				
						
						 
					</div>
					</div>
	
					
					
					<!-- 2 Column -->	
					
					<div class="firstquad">
					
					<div class="control-group">
							<label class="control-label">D.Challan Date</label>
							<div class="controls">
								<input type="text" name="itemDesc" required="required"  value="${dchllanobj.dchallandate}" readonly="readonly"
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
	
		</div>
		
	</fieldset>
</body>

<script>
getDChallannolst();
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
					
  					$('#dchallanno').empty();
					   	$('#dchallanno').append('<option value="">--Select--</option>');
 					 for (i in List ) {
 					
   			 		  $('#dchallanno').append('<option value="' + List[i] + '">' +List[i] + '</option>');
  				}
			 		}
	
				});
			
	}	
			
	
}

</script>
