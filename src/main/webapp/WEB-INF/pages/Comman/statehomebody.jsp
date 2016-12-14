<fieldset class="fieldset-style">
<form role="form" action="saveState.html" name="fnm" onsubmit="return validation()">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Add State</div>
						<div class="span2" align="right">
							<input type="button" class="btn-save" value="" id="btnsave" title="Save State"  onclick="check()"/>
							
							<div class="btn" title="State List" onclick="searchStateListByCountry()" id="btnclear">
								<i class="icon-list-alt"></i>
							</div>
								<div class="btn" align="left" title="Comman Home" onclick="gethomepage()" >
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
							<label class="control-label">Select Country </label>
							<div class="controls">
								<select class="form-control" name="countryId" id="countryId" required="required" onchange="getStateList()">
										<option value="select">--Select Country--</option>
									<c:if test="${not empty countryllst}">
             		           			<c:forEach var="listValue" items="${countryllst}">
             		           				<option value="${listValue.key}">${listValue.value}</option>
										</c:forEach>
									</c:if>
										</select>
											
							</div>
						</div>
						
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">Enter State</label>
							<div class="controls">
								
								<input type="text" class="form-control" required="required" name="stateName" id="stateName"  placeholder="" />
											
							</div>
						
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
								
											
					</div>
				</div>
			</div>
		</div>
	
	 <div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span11" align="left" id="selectedstatename"> </div>
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
						<table class="table table-bordered insideform" style="font-size: 12px;" id="statetable">
									<thead style="font-size: 12px;">
										<tr bgcolor="#84939f">
											<th>Sr No</th>
										
											<th>State</th>
											
										</tr>
									</thead>
									<tbody style="font-size: 12px;">
										<% int i=0;
												%>
											<c:if test="${not empty statelst}">
												
             		           					<c:forEach var="listValue" items="${statelst}">
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
             		           						
             		           						<td>${listValue.stateName}</td>
             		           						
             		           					
             		           						</td>
             		           					
             		           					</tr>
             		           						
												</c:forEach>
											</c:if>
										
									</tbody>
								</table>
								
								
								
				
				</div>
				
				</div>
		</div>
		</div>
	 </form> 
	 
	
	 
	</fieldset>
	<script>
	function  gethomepage()
	{
		  location.href="getSystems.html?moduleName=comman";
	}
	
	function searchStateListByCountry(){
		location.href="stateSearchByCountry.html"
	}

	//Form Validation start
	
	function check()
	{
		var flag=true;
		if($("#countryId").val()=="select")
			{
				alert("Please Select Country")
				flag=false;
			}
		
		if($("#stateName").val()=="")
		{
			alert("Please Enter State")
			flag=false;
		}
	
		
			if(flag)
				{
					document.fnm.submit();
				}
	
	}
	function validation(){
		check();
		
		  var regex = /^[a-zA-Z]*$/;
		  if (regex.test($('#stateName').val())) {

		      return true;
		  } else {
			
				  alert("Alphabets Only");
		     // document.getElementById("notification").innerHTML = "Alphabets Only";
		      return false;
		  }


		}
	
	
	</script>
