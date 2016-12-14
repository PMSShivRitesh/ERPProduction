<fieldset class="fieldset-style">
<div class="alert alert-success" id="idsuccess">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<i class="icon-thumbs-up"></i>Records added successfully!
		</div>
		<script type="text/javascript">
		$("#idsuccess").hide();
		</script>

	 
	 <div class="panel panel-default" id="idresults">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span11" align="left">Supplier List<!-- Project Task List --></div>
						<div class="span1" align="right">
							<div class="span1" align="right">
								<div class="btn" title="Go To Supplier Home" onclick="gethomepage();" id="btnclear">
								<i class="icon-home"></i>
							</div>
						</div>
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
							<th>Customer Name</th>
							
							<th>Action</th>
							
						</tr>
									</thead>
									<tbody style="font-size: 12px;">
										
											<c:if test="${not empty supplst}">
												<% int i=1;
												%>
             		           					<c:forEach var="listValue" items="${supplst}">
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
             		           						<td><%=i%></td>
             		           						<td>${listValue.suppName}</td>
             		           					
             		           						<td><a href="getSuppDetail.html?suppName=${listValue.suppName}"><div class="btn"><i class="icon-edit"></i></div></a></td>
             		           						
             		           					</tr>
												</c:forEach>
											</c:if>
										
									</tbody>
								</table>
								
								
								
				
				</div>
						
	 
	</fieldset>
	
	<script  type="text/javascript">
	function  gethomepage()
	{
		  location.href="getSystems.html?moduleName=Supplier";
	}
	</script>
