



<fieldset class="fieldset-style">

<div class="alert alert-success" id="idsuccess">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<i class="icon-thumbs-up"></i>${msg}
		</div>
		<script type="text/javascript">
		$("#idsuccess").hide();
		</script>

<form role="form" name="fname"  id="fname" >
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Add Process</div>
						<div class="span2" align="right">
							<input type="button" class="btn-save" value="" id="btnsave" onclick="saveFormDate()" title="Save Process" />
					
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
					
					
					<div class="control-group">
							<label class="control-label">Process Name</label>
							<div class="controls">
								<input type="text" class="form-control" id="processName" name="processName" class="search" />
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
			
				 <div class="panel panel-default" id="idresults">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Process List<!-- Project Task List --></div>
						
							<div class="span3" align="right">
							
							<div class="btn" onclick="deleteRowsChecked();" id="deletebtn" title="Delete selected Process">
								<i class="icon-trash"></i>
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
							<th>Process Name</th>
							<th>Action</th>
							
						
						</tr>
									</thead>
									<tbody style="font-size: 12px;">
										
											<c:if test="${not empty lst}">
												<% int i=0;
												%>
             		           					<c:forEach var="listValue" items="${lst}">
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
             		           						<td>${listValue.processName}</td>
             		           						<td><input name="chk" id="chk" value="${listValue.processName}" type="checkbox">
             		           						</td>
             		           					
             		           					</tr>
												</c:forEach>
											</c:if>
										
									</tbody>
								</table>
								
								
								
				
				</div>
						
	 
		</div>
		</div>
	 </form> 
	</fieldset>

<script>



function saveFormDate() {

    // get the form values
    var processName = $('#processName').val();
 
    var flag=true;
    
    if (processName=="")
	{
		flag = false;
		alert("Enter Process name")
	}
	
	
	if(flag==true)
	{
  
    $.ajax({
    type: "POST",
    url: "saveProcess.html",
    data: "processName=" + processName,
    success: function(response){
    // we have the response
    	  $('#idsuccess').show();
		    //$("#idsuccess").show();
		    $("#idsuccess").html("<button type='button' class='close' data-dismiss='alert' onclick='hide();'>&times;</button><i class='icon-thumbs-up'></i>"+
		    		response);
		    $('#processRate').val('');
  
  
    },
    error: function(e){
    alert('Error: ' + e);
    }
    });
	}
    }



function  gethomepage()
{
	  location.href="getSystems.html?moduleName=pp";
}


function getprocess()
{
	location.href="../ProductionErp/ppgetprocesslstRequest.html"
}
</script>
