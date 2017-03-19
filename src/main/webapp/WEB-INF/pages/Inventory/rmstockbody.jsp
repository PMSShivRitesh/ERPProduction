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

		</div>
		</div>
	 </form> 
	 

	

			<div class="panel-body">
			
				<div class="singleline-records">
					<table id="idtable" class="table table-bordered insideform">
						<thead style="font-size: 12px;">
						<tr bgcolor="#84939f">
							<th Style="width:5%">Sr.No</th>
							<th>RM Item Code</th>
							<th>RM Item Name</th>
							<th >RM Item Desc</th>
							
							<th >Min Stock</th>
							
							<th >Max Stock</th>
							
							<th>In Stock</th>
							
							<th >Location</th>
							
							
						
						</tr>
									</thead>
									<tbody style="font-size: 12px;">
										
											<c:if test="${not empty allrmstocklst}">
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
             		           						<td>${listValue.rmitemname}</td>
             		           						<td>${listValue.rmitemdesc}</td>
             		           						<td>${listValue.minStock}</td>
             		           						<td>${listValue.maxStock}</td>
             		           						<td>${listValue.inStock}</td>
             		           						<td>${listValue.rmitemLoc}</td>
             		           					
             		           						
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
		location.href="addrmitemstock.html"
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
