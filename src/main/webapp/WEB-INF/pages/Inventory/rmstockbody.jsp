<fieldset class="fieldset-style">

<form role="form" action="">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Raw Material Stock </div>
						<div class="span3" align="right">
							<!-- <input type="submit" class="icon-search" value="" id="btnsave" /> -->
						
						
						
							<div class="btn" onclick="addrmstock()"  title="Add Operation">
								<i class="icon-plus-sign"></i>
							</div>
							
						
							<div class="btn" align="left" title="Production And Planning Home" onclick="gethomepage()" >
							<i class="icon-home"></i>
							<!--  	<input type="button" class="glyphicon glyphicon-step-backward" value="Next" onclick="getNextForm()"/>-->
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="container-fluid panel-body">
				<div class="row-fluid search-align">
					<div class="firstquad">
						
						
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						
						<div class="controls">
								
							</div>
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
							<div class="control-group">
								<label class="control-label">RM Item Code</label>
								<div class="controls"><input type="text" class="form-control" name="processName" id="processName" value="${pname}"  /></div>
								
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
						<div class="span9" align="left">Stock Detail<!-- Project Task List --></div>
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
							<th>RM Item Code</th>
							<th>Stock Qty</th>
							<th >Location</th>
							
						
						</tr>
									</thead>
									<tbody style="font-size: 12px;">
										
											<c:if test="${not emptyallrmstocklst}">
												<% int i=0;
												%>
             		           					<c:forEach var="listValue" items="${allrmstocklst}">
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
             		           						<td>${listValue.rmstockQty}</td>
             		           						<td>${listValue.rmitemloc}</td>
             		           						
             		           					</tr>
												</c:forEach>
											</c:if>
										
									</tbody>
								</table>
								
								
								
				
				</div>
						
	 
	</fieldset>
	
	<script  type="text/javascript">
	
	function addrmstock()
	{
		location.href="../ProductionErp/addrmitemstockRequest.html"
	}
	
	
	 function assignpname()
	  {
		  var pname=$('#pname').val();
		  $('#processName').val(pname)
	  }
	 
	
	
	 
	 function  gethomepage()
	 {
	 	  location.href="getSystems.html?moduleName=pp";
	 }

	</script>
