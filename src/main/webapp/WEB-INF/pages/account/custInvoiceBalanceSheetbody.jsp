
<fieldset class="fieldset-style">
<form role="form" action="getCustInvoiceBalanceSheet.html" method="post">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Customer Balance Sheet</div>
						<div class="span2" align="right">
							<!-- <input type="submit" class="icon-search" value="" id="btnsave" /> -->
							 <button type="submit" class="btn">
  								<i class="icon-search"></i>
							</button> 
							
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
						
					
						
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
								
											
					</div>
				</div>
			</div>
			
			 <div class="panel-heading">
				<div class="container-fluid header-padding">
				
				</div>
			</div>	
			
			
			
		
		
	 	
	 	
	 	 <div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Invoice Bills</div>
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
												<th>Invoice No</th>
												<th>Invoice Date</th>
												<th>Invoice Amount</th>
												<th>Invoice Status</th>
										</tr>
									</thead>
									<tbody style="font-size: 12px;">
										
										
											<c:if test="${not empty lst1}">
												<% int i=1;
												%>
             		           					<c:forEach var="listValue" items="${lst1}">
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
             		           						<td>${listValue.invoiceno}</td>
             		           					
             		           					
             		           						<td>${listValue.invoiceDate}</td>
             		           						<td>${listValue.grandTotal}</td>
             		           						<td>${listValue.status}</td>
             		           					
             		           					
             		           					</tr>
												</c:forEach>
											</c:if>
								</table>
				
				</div>
				
			</div>
			
			
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Credited Bills</div>
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
												<th>Invoice No</th>
												<th>Credited</th>
												<th>Credited Date</th>
												<th>Credited Mode</th>
										</tr>
									</thead>
									<tbody style="font-size: 12px;">
										
										
											<c:if test="${not empty lst2}">
												<% int i=1;
												%>
             		           					<c:forEach var="listValue" items="${lst2}">
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
             		           						<td>${listValue.invoiceno}</td>
             		           					
             		           					
             		           						<td>${listValue.credit}</td>
             		           						<td>${listValue.paymentDate}</td>
             		           						<td>${listValue.payMode}</td>
             		           					
             		           					
             		           					</tr>
												</c:forEach>
											</c:if>
								</table>
				
				</div>
				
			</div>	
				
	 	
				</div>
				</div>
		  	


	</form>
	</fieldset>
</body>

<script>

</script>
