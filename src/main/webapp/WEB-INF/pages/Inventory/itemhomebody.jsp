<fieldset class="fieldset-style">

<form role="form" action="">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Item Detail </div>
						<div class="span3" align="right">
							<!-- <input type="submit" class="icon-search" value="" id="btnsave" /> -->
						
						
						
							<div class="btn" onclick="createItem()"  title="Create Item">
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
	 

	 
	 <div class="panel panel-default" id="idresults">
			

			<div class="panel-body">
			
				<div class="singleline-records">
					<table id="idtable" class="table table-bordered insideform">
						<thead style="font-size: 12px;">
						<tr bgcolor="#84939f">
							<th Style="width:5%">Sr.No</th>
							<th>Item Code</th>
							<th>Item Name</th>
							<th>Item Desc</th>
							<th>Min Stock</th>
							<th>Max Stock</th>
							<th>In Stock</th>
						
						</tr>
									</thead>
									<tbody style="font-size: 12px;">
										
											
												<% int i=0;
												%>
             		           					<c:forEach var="listValue" items="${itemdetaillst}">
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
             		           						<td>${listValue.itemCode}</td>
             		           						<td>${listValue.itemName}</td>
             		           						<td>${listValue.itemDesc}</td>
             		           						<td>${listValue.minStock}</td>
             		           						<td>${listValue.maxStock}</td>
             		           						<td>${listValue.inStock}</td>
             		           					</tr>
												</c:forEach>
											
									</tbody>
								</table>
								
								
								
				
				</div>
						
	 
	</fieldset>
	
	<script  type="text/javascript">
	function createItem()
	{
		location.href="createitemhome.html"
	}

	</script>
