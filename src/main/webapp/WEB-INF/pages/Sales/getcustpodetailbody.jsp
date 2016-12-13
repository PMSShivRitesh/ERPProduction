


<body onload="calculateTotal()">
<fieldset class="fieldset-style">
<form role="form" action="getcustSalesOrderItemDetail.html" >
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Sales Order Item Detail</div>
						<div class="span2" align="right">
							<!-- <input type="submit" class="btn-save" value="" id="btnsave" /> -->
							<button type="button" class="btn" onclick="getCustomerPosLst()">
  								<i class="icon-search"></i>
							</button>
							<!-- <div class="btn" title="Cancel" onclick="clearForm();" id="btnclear">
								<i class="icon-trash"></i>-->
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
							<label class="control-label">Customer Name</label>
							<div class="controls">
								<input type="text" class="form-control" name="custName" id="custName" placeholder="" />
							</div>
						</div>
						
						 
					</div>
					
					
					
						
						<!-- 3 Column -->
						
					<div class="firstquad">
						
						 <div class="control-group">
							<label class="control-label">Select PO</label>
							<div class="controls">
								<select class="form-control" name="custPoNo" id="custPoNo" onchange="this.form.submit()">
									<option>-Select--</option>
								</select>
							</div>
						</div>
						
						
							
							
							
								
				</div>
			</div>
		</div>
	 </form>
	 		<div class="panel panel-default" id="idresults">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span11" align="left">Details </div>
						<div class="span1" align="right">
							<!-- <div class="btn" onclick="deleteRowsChecked();" id="deletebtn" title="Delete selected">
								<i class="icon-trash"></i>
							</div> -->
						</div>
					</div>
				</div>
			</div>
			
			
			<div class="panel-body">
				<div class="singleline-records">
						<table class="table table-bordered insideform" style="font-size: 12px;" id="salesItemIntryTable">
									<thead style="font-size: 12px;">
										<tr bgcolor="#84939f">
											<th>Sr No </th>
											<th>Item Code</th>
											<th>Item Desc</th>
											<th>Unit</th>
											<th>Del Date</th>
											<th>Qty</th>
											<th>Rate</th>
											<th>Amount</th>
											<th>Status</th>
									
										</tr>
									</thead>
									<tbody style="font-size: 12px;">
										
											<c:if test="${not empty salesOrderItemDetail}">
												<% int i=1;
												%>
             		           					<c:forEach var="listValue" items="${salesOrderItemDetail}">
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
             		           						<td>${1}</td>
             		           						<td>${listValue.itemCode}</td>
             		           						<td>${listValue.itemDesc}</td>
             		           						<td>${listValue.unit}</td>
             		           						<td>${listValue.dilDate}</td>
             		           						<td>${listValue.qty}</td>
             		           						<td>${listValue.rate}</td>
             		           						<td>${listValue.amt}</td>
             		           						<td>${listValue.stauts}</td>
             		           					
             		           					</tr>
												</c:forEach>
											</c:if>
										
									</tbody>
								</table>
								
								
								
				
				</div>
				
				</div>
	
	
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




function getCustomerPosLst()
{
	var custName=document.getElementById("custName").value;
	var custPoList;
			jQuery.ajax({
		 	url: "getJsonCustPoNoList.html?name="+custName,
			type: "POST",

		  	dataType: "json",
			async: false,
				success: function (data1) {
					custPoList = data1
					
					
  					$('#custPoNo').empty();
					$('#custPoNo').append('<option value="">Select</option>');
 					 for (i in custPoList) {
 						
   			   $('#custPoNo').append('<option value="' + custPoList[i].poNo + '">' +custPoList[i].poNo + '</option>');
  				}
			 		}
	
				});
	
}
</script>