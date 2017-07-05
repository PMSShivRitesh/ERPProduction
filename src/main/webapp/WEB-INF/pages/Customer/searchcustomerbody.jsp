<fieldset class="fieldset-style">
<form role="form" action="getCustAllDetail.html">
<input type="hidden" name="custId" id="custId" value="${customerdetail.custId}">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Search Customer</div>
						<div class="span2" align="right">
							<!-- <input type="submit" class="btn-save" value="" id="btnsave" /> -->
							<button type="submit" class="btn" title="Get Customer All Detail">
  								<i class="icon-search"></i>
							</button>
							<div class="btn" title="Delete Customer" onclick="deletecustomer()" id="btnclear">
								<i class="icon-trash"></i>
							</div>
							
							<div class="btn" title="Go To Customer Systems" onclick="gethomepage();" id="btnclear">
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
							<label class="control-label">Customer Name</label>
							<div class="controls">
								<input type="text" id="custName" name="custName" value="${customerdetail.custName}" class="form-control" placeholder="" required="required" />
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
						<div class="span10" align="left">Customer Detail</div>
						<div class="span2" align="right">
							<button type="button" class="btn" onclick="getCustDetailEditForm()" title="Edit Persional Detail">
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
							<label class="control-label">Customer Name</label>
							<div class="controls">
								<input type="text" class="form-control" readonly="readonly"  value="${customerdetail.custName}"  />
							</div>
						</div>
						
						<div class="control-group">
							<label class="control-label">Country</label>
							<div class="controls">
								<input type="text" readonly="readonly"  value="${customerdetail.custCountry}" class="form-control" placeholder="" />
							</div>
						</div>
						
						<div class="control-group">
							<label class="control-label">District</label>
							<div class="controls">
								<input type="text" readonly="readonly"  value="${customerdetail.custdistrict}"   class="form-control" placeholder="" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Pin / Zip Code</label>
							<div class="controls">
								<input type="text"  readonly="readonly" value="${customerdetail.custZipCode}"  class="form-control" placeholder="" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Email</label>
							<div class="controls">
								<input type="text" readonly="readonly" value="${customerdetail.custemail}"  class="form-control" placeholder="" />
							</div>
						</div>
						
						
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">Short Name</label>
							<div class="controls">
								<input type="text"  readonly="readonly"  value="${customerdetail.custshortcutname}" class="form-control" placeholder="" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">State</label>
							<div class="controls">
								<input type="text" readonly="readonly" value="${customerdetail.custstate}"  class="form-control" placeholder="" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Taluka</label>
							<div class="controls">
								<input type="text"  readonly="readonly"  value="${customerdetail.custtaluka}"  class="form-control" placeholder="" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Website URL</label>
							<div class="controls">
								<a href="${customerdetail.custwebsite}" class="form-control">${customerdetail.custwebsite}</a>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Landline No</label>
							<div class="controls">
								<input type="text" readonly="readonly"  value="${customerdetail.custcontactno}"  class="form-control" placeholder="" />
							</div>
						</div>
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
								<div class="control-group">
							<label class="control-label">Address</label>
							<div class="controls">
								<textarea  class="form-control" rows="6" readonly="readonly" >${customerdetail.custAddress}</textarea>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Status</label>
							<div class="controls">
								<input type="text" readonly="readonly" value=""  class="form-control" placeholder="" />
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
    							<c:when test="${customerdetail.custgst=='YES'}">
     	 							<input type="checkbox" checked readonly="readonly" disabled="disabled"> 
      							</c:when>    
  						  		<c:otherwise>
    								  <input type="checkbox" readonly="readonly" disabled="disabled"> 
  							 	 </c:otherwise>
							</c:choose>
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
							<button type="button" class="btn" onclick="getCustomerContactEditForm()" title="Edit Customer Contacts">
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
										
											<c:if test="${not empty custconatctlst}">
												<% int i=1;
												%>
             		           					<c:forEach var="listValue" items="${custconatctlst}">
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
             		           						<td>${listValue.cpersionname}</td>
             		           						<td>${listValue.cpdesignation}</td>
             		           						<td>${listValue.cpphno}</td>
             		           						<td>${listValue.cpmail}</td>
             		           	
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
						<div class="span10" align="left">Registration Numbers</div>
						<div class="span2" align="right">
							<button type="button" class="btn" onclick="getCustomerDocumentEditForm()" title="Edit Customer Documents">
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
										
											<c:if test="${not empty customerregnolst}">
												<% int i=1;
												%>
             		           					<c:forEach var="listValue" items="${customerregnolst}">
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


function getCustDetailEditForm()
{
	var custId=document.getElementById("custId").value;
	location.href="editCustDetailform.html?custId="+custId;
	
}

function getCustomerContactEditForm()
{
	var custId=document.getElementById("custId").value;
	location.href="addCustomerContactPersions.html?custId="+custId
}


function getCustomerDocumentEditForm()
{
	var custId=document.getElementById("custId").value;
	location.href="addDocumets.html?custId="+custId
	
}


function deletecustomer()
{
	var custName=document.getElementById("custName").value;
	location.href="deleteallcustdetail.html?custname="+custName
}



function  gethomepage()
{
	  location.href="getSystems.html?moduleName=customer";
}

</script>