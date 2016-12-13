
<fieldset class="fieldset-style">
<form role="form" action="addbom.html" name="fnm">
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
							
							<button type="button" class="btn" title="List"  onclick="bomdetail()">
  								<i class="icon-list-alt"></i>
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
								<select class="form-control" name="fitemcode" id="fitemcode" onchange="getqItemDesc()"></select>
							</div>
						</div>
						
					
				</div>
			</div>
</div>
	
	
	<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Bom Entry</div>
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
						
						 
					</div>
					
					
					<!-- 2 Column -->	
					
					<div class="firstquad">
					
						<div class="control-group">
							<label class="control-label">RM Item Desc</label>
							<div class="controls">
								<select  name="rmitemdesc" id="rmitemdesc" class="form-control" ></select>
							</div>
						</div>
					

						
							</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
					
					
									
						<div class="control-group">
							<label class="control-label">Min re-oreder qty</label>
							<div class="controls">
								<input type="text" class="form-control" name="minorderqty" id="minorderqty" value="${pono}"  placeholder="" />
							</div>
							
						</div>	
							
							
				</div>
				
				
				<div class="firstquad">
					
					
									
						<div class="control-group">
							<label class="control-label">Max order qty</label>
							<div class="controls">
								<input type="text" class="form-control" name="maxorderqty" id="maxorderqty" value="${pono}"  placeholder="" />
							</div>
							
						</div>	
							
							
				</div>
				
				
				
				
				<div class="firstquad">
					
					
									
						<div class="control-group">
							<label class="control-label">Min stock level</label>
							<div class="controls">
								<input type="text" class="form-control" name="minstocklevel" id="minstocklevel" value="${pono}"  placeholder="" />
							</div>
							
						</div>	
							
							
				</div>
				
			</div>
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




//Get Item Desc From quotation table 
function getqItemDesc()
{
	
	var item=document.getElementById("fitemcode");
	var itemcode = item.options[item.selectedIndex].value;

				var qitemcodedesclst;
				jQuery.ajax({
			 	 url: "getqItemDescForPurchase.html?itemcode="+itemcode,
				 type: "POST",
	
			  	dataType: "json",
				async: false,
				success: function (data) {
					qitemcodedesclst = data
					
    					$('#rmitemdesc').empty();
					   	$('#rmitemdesc').append('<option value="">Select</option>');
   					 for (i in qitemcodedesclst ) {
 		
     			   $('#rmitemdesc').append('<option value="' + qitemcodedesclst[i].pitemdesc + '">' +qitemcodedesclst[i].pitemdesc + '</option>');
    				}
			 		}
		
					});
				
				
				createRmItemCode()
		
	}
	
	
//End Item Desc creation


function createRmItemCode()
{
	var item=document.getElementById("fitemcode");
	var itemcode = item.options[item.selectedIndex].value;
	document.getElementById("rmitemcode").value=itemcode+"-"+"RM";
	checkRMItemCode()
	
	

}
	
	
function bomdetail()
{
	document.location.href="../ProductionErp/getbomdetailform.html"	
}





</script>