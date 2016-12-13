



<fieldset class="fieldset-style">

<div class="alert alert-success" id="idsuccess">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<i class="icon-thumbs-up"></i>${msg}
		</div>
		<script type="text/javascript">
		$("#idsuccess").hide();
		</script>

<form role="form" name="fname"  id="fname" action="createitem.html" method="post" >
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Create Item</div>
						<div class="span2" align="right">
							<input type="submit" class="btn-save" value="" id="btnsave"  title="Add Stock" />
							<div class="btn" align="left" title="Go to Stock" onclick="getstocklst()" >
							<i class="icon-list-alt"></i>
							<!--  	<input type="button" class="glyphicon glyphicon-step-backward" value="Next" onclick="getNextForm()"/>-->
							</div>
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
							<label class="control-label">Item Code</label>
							<div class="controls">
								<input type="text" class="form-control" id="itemCode" name="itemCode"  required="required"/>
							</div>
						</div>
						
						
						<div class="control-group">
							<label class="control-label">Location</label>
							<div class="controls">
								<input type="text" class="form-control" id="itemLoc" name="itemLoc" 
								class="search"  required="required"/>
							</div>
						</div>
						
						
						<div class="control-group">
							<label class="control-label">In Stock</label>
							<div class="controls">
								<input type="text" class="form-control" id="inStock" name="inStock" 
								class="search"  required="required"/>
							</div>
						</div>
						
					
					
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
					
					<div class="control-group">
							<label class="control-label">Item Name</label>
						<div class="controls">
								<input type="text" class="form-control" id="itemName" name="itemName">
							</div>
						</div>
						
						
					<div class="control-group">
							<label class="control-label">Min Stock</label>
						<div class="controls">
								<input type="text" class="form-control" id="minStock" name="minStock">
							</div>
						</div>
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
						
					
						<div class="control-group">
							<label class="control-label">Item Desc</label>
						<div class="controls">
								<input type="text" class="form-control" id="itemDesc" name="itemDesc" 
								class="search" />
							</div>
						</div>
						
						
						<div class="control-group">
							<label class="control-label">Max Stock</label>
						<div class="controls">
								<input type="text" class="form-control" id="maxStock" name="maxStock" 
								class="search" />
							</div>
						</div>
						
						
						
											
					</div>
					
					
					
				</div>
			</div>
		</div>
		</div>
	 </form> 
	</fieldset>

<script>
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


//Get those Item Codes not creted quotation yet for entered customer
function getcustItemList()
{
	
	var custName=document.getElementById("custName").value;
	
	
			var List;
			jQuery.ajax({
		 	url: "getJsonItemcodelist.html?custName="+custName,
			type: "POST",
			dataType: "json",
			async: false,
				success: function (data) {
					List = data
					
  					$('#itemCode').empty();
					   	$('#itemCode').append('<option value="">--Select--</option>');
 					 for (i in List ) {
		
   			 		  $('#itemCode').append('<option value="' + List[i].itemCode + '">' +List[i].itemCode + '</option>');
  				}
			 		}
	
				});
			
			
			
	
}

//end
    
function  gethomepage()
{
	  location.href="getSystems.html?moduleName=pp";
}



function getstocklst()
{
	location.href="../ProductionErp/itemstockdetailRequest.html"
}

</script>
