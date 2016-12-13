<fieldset class="fieldset-style">
<form role="form" action="getSuppDetail.html">
<input type="hidden" name="suppId" id="suppId" value="${suppId}">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Search Supplier</div>
						<div class="span2" align="right">
							<!-- <input type="submit" class="btn-save" value="" id="btnsave" /> -->
							<button type="submit" class="btn" title="Get Detail">
  								<i class="icon-search"></i>
							</button>
							<div class="btn" title="Delete Supplier" onclick="deletesupplier()" id="btnclear">
								<i class="icon-trash"></i>
							</div> 	
							<div class="btn" title="Go To Supplier Home" onclick="gethomepage();" id="btnclear">
								<i class="icon-home"></i>
							</div>
												
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
						<div class="span10" align="left">Supplier Detail</div>
						<div class="span2" align="right">
							<button type="button" class="btn" title="Edit Supplier Detail" onclick="getSuppDetailEditForm()">
  								<i class="icon-edit"></i>
							</button>
						
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
								<input type="text" class="form-control" readonly="readonly"  value="${supplierdetail.suppName}" placeholder="" />
							</div>
						</div>
						
						<div class="control-group">
							<label class="control-label">Country</label>
							<div class="controls">
									<input type="text" readonly="readonly"  value="${supplierdetail.countryName}" class="form-control" placeholder="" />
							</div>
						</div>
						
						<div class="control-group">
							<label class="control-label">District</label>
							<div class="controls">
							<input type="text" readonly="readonly"  value="${supplierdetail.districtName}"   class="form-control" placeholder="" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Pin / Zip Code</label>
							<div class="controls">
							<input type="text"  readonly="readonly" value="${supplierdetail.suppZipCode}"  class="form-control" placeholder="" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Email</label>
							<div class="controls">
								<input type="text" readonly="readonly" value="${supplierdetail.suppEmail}"  class="form-control" placeholder="" />
							</div>
						</div>
						
						
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">Short Name</label>
							<div class="controls">
								<input type="text"  readonly="readonly"  value="${supplierdetail.suppShortCutName}" class="form-control" placeholder="" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">State</label>
							<div class="controls">
								<input type="text" readonly="readonly" value="${supplierdetail.stateName}"  class="form-control" placeholder="" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Taluka</label>
							<div class="controls">
								<input type="text"  readonly="readonly"  value="${supplierdetail.talukaName}"  class="form-control" placeholder="" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Website URL</label>
							<div class="controls">
								<input type="text"  readonly="readonly" value="${supplierdetail.suppWebsite}"  class="form-control" placeholder="" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Landline No</label>
							<div class="controls">
								<input type="text" readonly="readonly"  value="${supplierdetail.suppConatactNo}"  class="form-control" placeholder="" />
							</div>
						</div>
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
								<div class="control-group">
							<label class="control-label">Address</label>
							<div class="controls">
								<textarea  class="form-control" rows="6" readonly="readonly" >${supplierdetail.suppAddress}</textarea>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Status</label>
							<div class="controls">
							<input type="text" readonly="readonly" value="${supplierdetail.suppStatus}"  class="form-control" placeholder="" />
							</div>
						</div>
											
					</div>
					
				</div>
			</div>
		</div>
		</div>
		<!-- For check box -->
				<!-- 3 pannel -->
		
		 <div class="form-horizontal">
		<div class="panel panel-default">
			<!-- <div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Title</div>
						
					</div>
				</div>
			</div> -->
			<div class="container-fluid panel-body">
				<div class="row-fluid search-align">
					<div class="firstquad">
						<div class="control-group">
							<label class="control-label">GST Apply</label>
							<div class="controls">
								<c:choose>
    							<c:when test="${supplierdetail.suppGst=='YES'}">
     	 							<input type="checkbox" checked readonly="readonly"> 
      							</c:when>    
  						  		<c:otherwise>
    								  <input type="checkbox" readonly="readonly"> 
  							 	 </c:otherwise>
							</c:choose>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Excise Apply</label>
							<div class="controls">
								<c:choose>
							<c:when test="${supplierdetail.suppExcise=='YES'}">
     	 							<input type="checkbox" checked readonly="readonly">  
      							</c:when>    
  						  		<c:otherwise>
    								  <input type="checkbox" readonly="readonly"> 
  							 	</c:otherwise>
						</c:choose>
							</div>
						</div>
						
						
						</div>

					<div class="firstquad">
						<div class="control-group">
							<label class="control-label">CST Apply</label>
							<div class="controls">
								<c:choose>
									<c:when test="${supplierdetail.suppCst=='YES'}">
										<input type="checkbox" checked readonly="readonly">
									</c:when>
									<c:otherwise>
										<input type="checkbox" readonly="readonly">
									</c:otherwise>
								</c:choose>
							</div>
						</div>
						
						<div class="control-group">
							<label class="control-label">Service Tax Apply</label>
							<div class="controls">
								<c:choose>
							<c:when test="${supplierdetail.suppServiceTax=='YES'}">
     	 							<input type="checkbox" checked readonly="readonly">  
      							</c:when>    
  						  		<c:otherwise>
    								  <input type="checkbox" readonly="readonly" > 
  							 	</c:otherwise>
						</c:choose>
							</div>
						</div>
					</div>
					
					<div class="firstquad">
						<div class="control-group">
							<label class="control-label">VAT Apply</label>
							<div class="controls">
								<c:choose>
							<c:when test="${supplierdetail.suppVat=='YES'}">
     	 							<input type="checkbox" checked readonly="readonly">  
      							</c:when>    
  						  	
  						  		<c:otherwise>
    								  <input type="checkbox" readonly="readonly"> 
  							 	</c:otherwise>
							
								
						</c:choose>
							</div>
						</div>
						
						
						<div class="control-group">
							<label class="control-label"></label>
							<div class="controls">
								
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
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Contact Person</div>
						<div class="span2" align="right">
							<button type="button" class="btn" title="Edit Supplier Contact Persions"  onclick="getSupplierContactEditForm()">
  								<i class="icon-edit"></i>
							</button>
							</div>
					</div>
				</div>
			</div>
			<div class="panel-body">
				<div class="singleline-records">
						<table class="table table-bordered insideform" style="font-size: 12px;">
									<thead style="font-size: 12px;">
										<tr bgcolor="#84939f">
											<th>Sr No</th>
											<th>Contact Person</th>
											<th>Designation</th>
											<th>Mobile</th>
											<th>Email</th>
											 
										</tr>
									</thead>
									<tbody style="font-size: 12px;">
										
											<c:if test="${not empty suppconatctlst}">
												<% int i=1;
												%>
             		           					<c:forEach var="listValue" items="${suppconatctlst}">
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
             		           						<td>${listValue.contactPersionName}</td>
             		           						<td>${listValue.designation}</td>
             		           						<td>${listValue.phoneno}</td>
             		           						<td>${listValue.email}</td>
             		           					
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
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Documents</div>
						<div class="span2" align="right">
							<button type="button" class="btn" title="Edit Supplier Documents" onclick="getSupplierDocumentEditForm()">
  								<i class="icon-edit"></i>
							</button>
							</div>
					</div>
				</div>
			</div>
			<div class="panel-body">
				<div class="singleline-records">
						<table class="table table-bordered insideform" style="font-size: 12px;">
									<thead style="font-size: 12px;">
										<tr bgcolor="#84939f">
											<th>Sr No</th>
											<th>Document Name</th>
											<th>Number</th>
											<th>wef</th>
										</tr>
									</thead>
									<tbody style="font-size: 12px;">
										
											<c:if test="${not empty suppdoclst}">
												<% int i=1;
												%>
             		           					<c:forEach var="listValue" items="${suppdoclst}">
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
             		           						<td>${listValue.docname}</td>
             		           						<td>${listValue.docno}</td>
             		           						<td>${listValue.wef}</td>
             		           					
             		           					</tr>
												</c:forEach>
											</c:if>
										
									</tbody>
								</table>
				</div>
				</div>
		</div>
		</div>
		
		
	 
	 
	</fieldset>
	
	<script>

	
	
	

	function getSuppDetailEditForm()
	{
		var suppId=document.getElementById("suppId").value;
		
		location.href="suppdetailedit.html?suppId="+suppId;
		
	}
	
	
	function getSupplierContactEditForm()
	{
		var suppId=document.getElementById("suppId").value;
		location.href="addSupplierContactPersions.html?suppId="+suppId;
	}
	
	
	function getSupplierDocumentEditForm()
	{
		var suppId=document.getElementById("suppId").value;
		location.href="addSuppDocuments.html?suppId="+suppId;
	}
	
	function deletesupplier()
	{
		var suppname=document.getElementById("suppName").value;
		location.href="deletesupplier.html?suppname="+suppname;
	}
	
	function  gethomepage()
	{
		  location.href="getSystems.html?moduleName=Supplier";
	}

</script>