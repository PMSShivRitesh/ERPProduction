<%@ page trimDirectiveWhitespaces="true" %>
<fieldset class="fieldset-style">
<div class="alert alert-" id="idsuccess">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<i class="icon-thumbs-up"></i>
		</div>
		<script type="text/javascript">
		$("#idsuccess").hide();
		</script>
<form role="form" action="saveCountry.html" onsubmit="return validation()">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Country</div>
						<div class="span2" align="right">
							<input type="submit" class="btn-save" value="" id="btnsave" title="Add Country"/>
							<div class="btn" title="Delete Selected Row" onclick="deleteRowsChecked()" id="btnclear">
								<i class="icon-trash"></i>
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
							<label class="control-label">Country</label>
							<div class="controls">
								<input type="text" name="countryName" id="countryName" required="required" class="form-control" placeholder="" onblur="checkCountryExist()" />
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
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span11" align="left">Country List </div>
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
						<table class="table table-bordered insideform" style="font-size: 12px;" id="countrytable">
									<thead style="font-size: 12px;">
										<tr bgcolor="#84939f">
											<th>Sr No</th>
											<th>Country</th>
											<th>Action</th>
										
										</tr>
									</thead>
									<tbody style="font-size: 12px;">
										<% int i=0;
												%>
											<c:if test="${not empty countryllst}">
												
             		           					<c:forEach var="listValue" items="${countryllst}">
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
             		           						
             		           						<td>${listValue.countryName}</td>
             		           						
             		           						<td><input name="chk" id="chk" value="${listValue.countryName}" type="checkbox">
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
	
	function deleteRowsChecked() {
		var check1 = 0;
		var table = document.getElementById("countrytable");
		
		for ( var rowi = table.rows.length; rowi--;) {
			var row = table.rows[rowi];
			var inputs = row.getElementsByTagName('input');
			for ( var inputi = inputs.length; inputi--;) {
				var input = inputs[inputi];
				if (input.type === 'checkbox' && input.checked) {
					check1 = 1;
				}
			}
		}

		if (check1 == 0) {
			$('#iderror').show();
			$('#idsuccess').hide();
		} else {
			var result = confirm("Are you sure you want to delete selected records?");
			if (result) {
				var table = document.getElementById("countrytable");
				for ( var rowi = table.rows.length; rowi--;) {
					var row = table.rows[rowi];
					var inputs = row.getElementsByTagName('input');
					for ( var inputi = inputs.length; inputi--;) {
						var input = inputs[inputi];
						if (input.type === 'checkbox' && input.checked) {
							var countryname = input.value;
							alert(countryname);
							 $.ajax({
								url : "deleteCountry.html",
								type : "GET",
							    data: "countryName=" + countryname,
								

								success : function(data) {
									var obj = JSON.parse(data.status);
								}
							}); 
							row.parentNode.removeChild(row);
						}
					}
				}
				$('#idsuccess').show();
				$('#iderror').hide();
			}
		}
	}
	
	/*function checkCountryExist(){
			var countryName=$('#countryName').val();
		    $.ajax({
		    type: "POST",
		    url: "checkcountryexist.html",
		    data: "countryName=" + countryName,
		    success: function(data){
		    	if(data=='"1"'){
		   		 $('#idsuccess').hide();
					}
		   else
		   	{
		   		
		   
		  
		   
		   	}
		 
		    },
		    error: function(e){
		    alert('Error: ' + e);
		    }
		    });
		    }
	*/


	function  gethomepage()
	{
		  location.href="getSystems.html?moduleName=comman";
	}
	
	//Form Valiation Start


function validation(){

	  var regex = /^[a-zA-Z]*$/;
	  if (regex.test($('#countryName').val())) {

	      return true;
	  } else {
		
			  alert("Alphabets Only");
	     // document.getElementById("notification").innerHTML = "Alphabets Only";
	      return false;
	  }


	}
	</script>
