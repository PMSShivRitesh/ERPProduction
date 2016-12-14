



<fieldset class="fieldset-style">
<form role="form" action="addPurchaseItem.html" name="fnm">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Purchase Order Item Entry</div>
						<div class="span3" align="right">
							<!-- <button class="btn-save" title="Save" onclick="createUser();" id="btnsave"></button> -->
							
							<button type="button" class="btn" title="Get Quotation By Item Code" onclick="getqItemcodeLst()">
  								<i class="icon-search"></i>
							</button>
							
							<button type="button" class="btn" title="Item Code" onclick="getItemCodeFromStock()">
  								<i class="icon-search"></i>
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
							<label class="control-label">Quotation NO</label>
							<div class="controls">
							<input type="text" class="form-control" name="qno" id="qno" placeholder="" />
							</div>
						</div>
					</div>
					<div class="firstquad">
						<div class="control-group">
							<label class="control-label">Item Code</label>
							<div class="controls">
								<select class="form-control" name="itemcode" id="itemcode"></select>
							</div>
						</div>
						
					
				</div>
			</div>
</div>
	
	
	<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Item Entry</div>
							<div class="span3" align="right">
							<input type="submit" class="btn-save" value="" id="btnsave" title="Add Purchase Item">
							</div>
					</div>
				</div>
			</div>		

			<!--      Actual Form -->
			<div class="container-fluid panel-body">
				<div class="row-fluid search-align">
					<div class="firstquad">
						
						<div class="control-group">
							<label class="control-label">RM Item Code</label>
							<div class="controls">
							<input type="text" class="form-control" name="rmitemcode" id="rmitemcode" readonly="readonly" >
							</div>
						</div>
						
						
						
						
						 <div class="control-group">
							<label class="control-label">Supplier Name</label>
									<input type="text" class="form-control" name="suppName" id="suppName" readonly="readonly">
						</div>
						
							<div class="control-group">
							<label class="control-label">Unit</label>
							<div class="controls">
							<input type="text" id="unit" name="unit" class="form-control" placeholder="" value="NO" />
							</div>
					</div>		
										
						
						
						 
					</div>
					
					
					<!-- 2 Column -->	
					
					<div class="firstquad">
					
						<div class="control-group">
							<label class="control-label">Item Description</label>
							<div class="controls">
								<select  name="itemdesc" id="itemdesc" class="form-control" ></select>
							</div>
						</div>
					

						 <div class="control-group">
							<label class="control-label">Rate</label>
							<div class="controls">
								<input type="text" class="form-control" placeholder="" id="rate" name="rate" readonly="readonly"/>
							</div>
						</div>
						
						
							<div class="control-group">
							<label class="control-label">Amount</label>
							<div class="controls">
								<input type="text" class="form-control" name="amt" id="amt"  placeholder="" />
							</div>
						</div>	
						
						
						
							</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
					
					
									
						<div class="control-group">
							<label class="control-label">PO Number</label>
							<div class="controls">
								<input type="text" class="form-control" name="pono" id="pono" value="${pono}" readonly="readonly" placeholder="" />
							</div>
							
						</div>	
							
					
						 <div class="control-group">
							<label class="control-label">Quantity</label>
								<input type="text" class="form-control" name="qty" id="qty" onblur="caluculateAmt()" required="required"/>
						</div>
						
					
					
					
								
				</div>
			</div>
		</div>
	 </form>
	 		<div class="panel panel-default" id="idresults">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span11" align="left">PO Items </div>
						<div class="span1" align="right">
								<div class="btn" onclick="deleteRowsChecked();" id="deletebtn" title="Remove selected Operation">
								<i class="icon-trash"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			
			<div class="panel-body">
				<div class="singleline-records">
						<table class="table table-bordered insideform" style="font-size: 12px;" id="idtable">
									<thead style="font-size: 12px;">
										<tr bgcolor="#84939f">
											<th>Sr. No.</th>
											<th>Item Code</th>
											<th>Item Desc</th>
											<th>Qty</th>
											<th>Unit</th>
											<th>Rate</th>
											<th>Amount</th>
											<th>Action</th>
									
										</tr>
									</thead>
									<tbody style="font-size: 12px;">
										
											<c:if test="${not empty purchaseorderitemlst}">
												<% int i=0;
												%>
             		           					<c:forEach var="listValue" items="${purchaseorderitemlst}">
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
             		           						
             		           						<td>${listValue.itemcode}</td>
             		           						<td>${listValue.itemdesc}</td>
             		           						<td>${listValue.qty}</td>
             		           						<td>${listValue.unit}</td>
             		           						<td>${listValue.rate}</td>
             		           						<td>${listValue.amt}</td>
             		           						<td><input name="chk" id="chk" value="${listValue.itemcode}" type="checkbox"></td>
             		           					
             		           					</tr>
												</c:forEach>
											</c:if>
										
									</tbody>
								</table>
								
								
								
				
				</div>
			
				</div>
	
	
	</div>
	</fieldset>



<script type="text/javascript">					
function getqItemcodeLst()
	{
	
			var qno=document.getElementById("qno").value;
			
			
				var qitemcodelst;
				jQuery.ajax({
			 	 url: "getqItemCodeList.html?qno="+qno,
 				 type:  "POST",
	
			  	dataType: "json",
				async: false,
  				success: function (data) {
  				
  					qitemcodelst = data
  					
      					$('#itemcode').empty();
  					   	$('#itemcode').append('<option value="">Select</option>');
     					 for (i in qitemcodelst ) {
     						
   		
       			   $('#itemcode').append('<option value="' + qitemcodelst[i].itemCode + '">' +qitemcodelst[i].itemCode + '</option>');
      				}
 			 		}
		
					});
			
		
	}
	
function getItemCodeFromStock()
{
	var qno=document.getElementById("qno").value;
	
	var qitemcodelst;
	jQuery.ajax({
 	 url: "getrminventoryitemcodeforpo.html",
		 type:  "POST",

  	dataType: "json",
	async: false,
		success: function (data) {
		
			qitemcodelst = data
			
				$('#itemcode').empty();
			   	$('#itemcode').append('<option value="">Select</option>');
				 for (i in qitemcodelst ) {
					

		   $('#itemcode').append('<option value="' + qitemcodelst[i].itemcode + '">' +qitemcodelst[i].itemcode + '</option>');
			}
	 		}

		});

}

//Get Item Desc From quotation table 
function getqItemDesc()
{
	
	var item=document.getElementById("itemcode");
	var itemcode = item.options[item.selectedIndex].value;

				var qitemcodedesclst;
				jQuery.ajax({
			 	 url: "getqItemDescForPurchase.html?itemcode="+itemcode,
 				 type: "POST",
	
			  	dataType: "json",
				async: false,
  				success: function (data) {
  					qitemcodedesclst = data
  					
      					$('#itemdesc').empty();
  					   	$('#itemdesc').append('<option value="">Select</option>');
     					 for (i in qitemcodedesclst ) {
   		
       			   $('#itemdesc').append('<option value="' + qitemcodedesclst[i].pitemdesc + '">' +qitemcodedesclst[i].pitemdesc + '</option>');
      				}
 			 		}
		
					});
				
				
				createRmItemCode()
		
	}
	
	
//End Item Desc creation
	
function createRmItemCode()
{
	var item=document.getElementById("itemcode");
	var itemcode = item.options[item.selectedIndex].value;
	document.getElementById("rmitemcode").value=itemcode+"-"+"RM";
	checkRMItemCode()
	
	

}
	
$(document).ready(function(){
	$('#itemcode').change(function(event){
	
		var item=document.getElementById("itemcode");
		var itemcode = item.options[item.selectedIndex].value;
		
		
	
  		$.getJSON('getqItemDetailForPurchase.html',{itemcode:itemcode}).done(function(json) {
  			
  			
  			document.getElementById("suppName").value=json[0].supplierName;
  			document.getElementById("rate").value=json[0].supplierRate;
  			
  			checkPoStatus(json[0].supplierName)
  			getqItemDesc();
  			
  		
  	  })
.fail(function( jqxhr, textStatus, error ) {
alert("fail");
});
});
});


function checkPoStatus(suppname)
{
	
	$.getJSON('checkponostatus.html',{suppname:suppname}).done(function(json) {
		
			
		document.getElementById("pono").value=json[0].poNumber;
	
		
	  })
.fail(function( jqxhr, textStatus, error ) {
alert("fail");
});

}


function caluculateAmt() {
	var amt=parseFloat(document.getElementById("qty").value)*parseFloat(document.getElementById("rate").value);
	document.getElementById("amt").value=amt;
	
}

function  checkRMItemCode()
{
	
	var itemcode=$("#rmitemcode").val();

	$.getJSON('checkRmitemcode.html',{itemcode:itemcode}).done(function(json) {
	
		if(json[0].itemcode=="exist")
			{
				
			}
		else
			{
				var item=document.getElementById("itemcode");
				var itemcode = item.options[item.selectedIndex].value;
				document.getElementById("rmitemcode").value=itemcode+" "+"RM"+" "
			}
	
		
	  })
.fail(function( jqxhr, textStatus, error ) {
alert("fail");
	});
	
	
}



function deleteRowsChecked() {
	var check1 = 0;
	var table = document.getElementById("idtable");
	var pono=document.getElementById("pono").value;
	var qno=document.getElementById("qno").value;
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
			var table = document.getElementById("idtable");
			for ( var rowi = table.rows.length; rowi--;) {
				var row = table.rows[rowi];
				var inputs = row.getElementsByTagName('input');
				for ( var inputi = inputs.length; inputi--;) {
					var input = inputs[inputi];
					if (input.type === 'checkbox' && input.checked) {
						var itemcode = input.value;
						alert(itemcode);
						 $.ajax({
							url : "deletepoitem.html",
							type : "GET",
						    data: "pono=" + pono + "&itemcode=" + itemcode+ "&itemcode=" + itemcode,
							

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

</script>