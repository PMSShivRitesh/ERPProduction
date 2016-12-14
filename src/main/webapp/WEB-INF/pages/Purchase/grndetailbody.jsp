<fieldset class="fieldset-style">

<form role="form" action="getgrndetail.html">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">GRN Detail  </div>
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
						
						<div class="controls">
								
							</div>
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
								<div class="control-group">
							<label class="control-label">PO No.</label>
							<div class="controls">
									<select class="form-control" name="poNumber" id="poNumber" onchange="this.form.submit()" ></select>
							</div>
						</div> 	
											
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
						<div class="span9" align="left">GRN Detail<!-- Project Task List --></div>
						<div class="span3" align="right">
						
							
							
						
						</div>
					</div>
				</div>
			</div>

			<div class="panel-body">
			
				<div class="singleline-records">
					<table id="idtable" class="table table-bordered insideform">
						<thead style="font-size: 12px;">
						<tr bgcolor="#84939f">
							<th Style="width:5%">Sr.No</th>
							<th>Rm Item Code</th>
							<th>Received Qty</th>
							<th>Inspected Qty</th>
							<th>Rejected Qty</th>
							<th>Received Date</th>
							<th>Pending Qty</th>
							
						
						</tr>
									</thead>
									<tbody style="font-size: 12px;">
										
											<c:if test="${not empty grndetaillst}">
												<% int i=0;
												%>
             		           					<c:forEach var="listValue" items="${grndetaillst}">
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
             		           						<td><%=i %></td>
             		           						<td>${listValue.rmitemcode}</td>
             		           						<td>${listValue.receivedQty}</td>
             		           						<td>${listValue.inspectedQty}</td>
             		           						<td>${listValue.rejectedQty}</td>
             		           						<td>${listValue.grnDate}</td>
             		           						<td>${listValue.pendingQty}</td>
             		           					</tr>
												</c:forEach>
											</c:if>
										
									</tbody>
								</table>
								
								
								
				
				</div>
						
	 
	</fieldset>
	
	<script  type="text/javascript">

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
	</script>
