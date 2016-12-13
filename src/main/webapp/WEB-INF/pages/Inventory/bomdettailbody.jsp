
<fieldset class="fieldset-style">
<form role="form" action="getbomdetail.html" name="fnm">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Bill Of material</div>
						<div class="span3" align="right">
							<!-- <button class="btn-save" title="Save" onclick="createUser();" id="btnsave"></button> -->
							
							<button type="button" class="btn" title="Get Item Code" onclick="getcustItemList()">
  								<i class="icon-search"></i>
							</button>
						
							
							<button type="button" class="btn" title="Add BOM Detail" onclick="addBomdetail()">
  								<i class="icon-plus-sign"></i>
							</button>
							
							<div class="btn" align="left" title="Quotation Home" onclick="gethomepage()" >
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
						
						<div class="control-group">
							<label class="control-label">Customer Name</label>
							<div class="controls">
							<input type="text" class="form-control" id="custName" name="custName" placeholder="" />
							</div>
						</div>
					</div>
					<div class="firstquad">
						<div class="control-group">
							<label class="control-label">Item Code</label>
							<div class="controls">
								<select class="form-control" name="fitemcode" id="fitemcode" onchange="this.form.submit()"></select>
							</div>
						</div>
						
					
				</div>
			</div>
</div>
	
	
	<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Bom Detail</div>
							<div class="span3" align="right">
							
							</div>
					</div>
				</div>
			</div>		

			<!--      Actual Form -->
			
				<div class="singleline-records">
					<table id="idtable" class="table table-bordered insideform">
						<thead style="font-size: 12px;">
						<tr bgcolor="#84939f">
							<th Style="width:5%">Sr.No</th>
							<th>RM Item Code</th>
							<th>RM Item Desc</th>
							<th>Min Order Qty</th>
							<th>Max Order Qty</th>
							<th>Min Stock level</th>
						</tr>
									</thead>
									<tbody style="font-size: 12px;">
										
											<c:if test="${not empty bomdetail}">
												<% int i=0;
												%>
             		           					<c:forEach var="listValue" items="${bomdetail}">
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
             		           						<td>${listValue.rmitemdesc}</td>
             		           						<td>${listValue.minorderqty}</td>
             		           						<td>${listValue.maxorderqty}</td>
             		           						<td>${listValue.minstocklevel}</td>
             		           					
             		           					</tr>
												</c:forEach>
											</c:if>
										
									</tbody>
								</table>
								
								
								
				
				</div>
	 </form>
	 		
	</fieldset>



<script type="text/javascript">		



//Customer Name Autocompleter 
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

                      } });
  }
});
});
});

//End Customer Name Autocompleter




function getcustItemList()
{
	
	var custName=document.getElementById("custName").value;
	
	
			var List;
			jQuery.ajax({
		 	url: "getcustItemcodelist.html?custName="+custName,
			type: "POST",
			dataType: "json",
			async: false,
				success: function (data) {
					List = data
					
  					$('#fitemcode').empty();
					   	$('#fitemcode').append('<option value="">--Select--</option>');
 					 for (i in List ) {
		
   			 		  $('#fitemcode').append('<option value="' + List[i].itemCode + '">' +List[i].itemCode + '</option>');
  				}
			 		}
	
				});
	
}

function addBomdetail()
{
	document.location.href="../ProductionErp/addbom.html"	
}


</script>