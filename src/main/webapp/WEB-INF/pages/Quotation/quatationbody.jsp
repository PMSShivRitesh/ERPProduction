
<fieldset class="fieldset-style">
<form role="form" name="fname"  id="fnm"  action="saveQuotationDetail.html" method="post">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Create Quotation</div>
						<div class="span2" align="right">
							<input type="button" class="btn-save" value="" id="btnsave" title="Save Item Detail" onclick="checkFormdata()" />
							
						
						
						<div class="btn" align="left"  onclick="gethomepage()" title="Quotation Home">
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
								<input type="text" class="form-control" id="custName" name="custName" 
								class="search" onblur="getcustItemList()" required="required"/>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Item Code</label>
							<div class="controls">
								<select class="form-control" id="itemCode" name="itemCode" class="form-control"></select>
							</div>
						</div>
						
						<div class="control-group">
							<label class="control-label">RM Sub Grade</label>
							<div class="controls">
								<select class="form-control" name="rmGrade" id="rmGrade"></select>
							</div>
						</div>
						
						<div class="control-group"  id="width">
							<label class="control-label"><span id="text">WIDTH</span></label>
							<div class="controls" >
								<input type="text" id="dim2" name="dim2"   class="form-control" placeholder="" onblur="getRMShapeRangeLst()"/>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">RM Weight</label>
							<div class="controls">
								<input type="text" id="rmWeight" name="rmWeight"  readonly="readonly" class="form-control" placeholder="" />
							</div>
						</div>
						
						<div class="control-group">
							<label class="control-label">RM Rate</label>
							<div class="controls">
								<input type="text" class="form-control" id="supplierRate" name="supplierRate" readonly="readonly" placeholder="" />
							</div>
						</div>
						
						
						
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						<div class="control-group">
							<label class="control-label">Quotation No.</label>
							<div class="controls">
								<input type="text" class="form-control" id="qNo" name="qNo"  readonly="readonly" value="${qno}"  placeholder="" />
							</div>
						</div>

						<div class="control-group">
							<label class="control-label">Item Description</label>
							<div class="controls">
								<input type="text" class="form-control" id="itemDescription" name="itemDescription" readonly="readonly" />
							</div>
						</div>
						
						<div class="control-group">
							<label class="control-label"title="Raw Material Shape">RM Shape</label>
							<div class="controls">
								<select class="form-control" name="rmShapeName" id="rmShapeName" onchange="showParameters()">
									<option value="select">--Select--</option>
									<option>Round</option>
									<option>Rectangel</option>
								</select>
							</div>
						</div>

						<div class="control-group" id="length">
							<label class="control-label">LENGTH</label>
							<div class="controls" >
								<input type="text" id="dim3" id="dim3" name="dim3"   class="form-control" placeholder="" onblur="calculateRMWeight()"/>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">RM Shape Range</label>
							<div class="controls">
								<select class="form-control" id="rmSizeRange" name="rmSizeRange" ></select>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">RM Amt</label>
							<div class="controls">
								<input type="text" id="rmAmt" name="rmAmt"  readonly="readonly" class="form-control" placeholder="" />
							</div>
						</div>
						
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
						<div class="control-group">
							<label class="control-label">Quotation Date</label>
							<div class="controls">
								<input type="text" class="form-control" name="qdate" id="qdate" placeholder="" />
							</div>
						</div>
						
						<div class="control-group">
							<label class="control-label">Basic RM Grade</label>
							<div class="controls">
								<select class="form-control" onchange="getRawMaterialLst()" name="brmGrade" id="brmGrade">
								<option value="select">--Select--</option>
											<c:if test="${not empty brmgradelst}">
             		           					<c:forEach var="listValue" items="${brmgradelst}">
             		           						<option value="${listValue}">${listValue}</option>
												</c:forEach>
											</c:if>
								</select>
							</div>
						</div>
						<div class="control-group" id="thickness">
							<label class="control-label">THICKNESS</label>
							<div class="controls">
								<input type="text" id="dim1" name="dim1"  class="form-control" placeholder="" onblur="getRMShapeRangeLst()"   />
							</div>
						</div>
						
						<!-- <div class="control-group" id="maxwidth">
							<label class="control-label">Max-Width</label>
							<div class="controls" >
								<input type="text" id="dim4" name="dim4"   class="form-control" placeholder=""  />
							</div>
						</div> -->
						<div class="control-group">
							<label class="control-label">Supplier</label>
							<div class="controls">
								<select class="form-control" name="supplierName" id="supplierName"></select>
							</div>
						</div>
						
						
						
											
					</div>
				</div>
			</div>
		</div>
		</div>
		<input type="hidden" id="density" name="density">
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

//Get Raw Material List Comes Under Selected Basic RM Grade
function getRawMaterialLst()
	{
	
		var brmGrade=document.getElementById("brmGrade");
		var brawmaterialname = brmGrade.options[brmGrade.selectedIndex].value;
				var rawMaterialList;
				jQuery.ajax({
			 	 url: "getJsonRawMaterialList.html?name="+brawmaterialname,
 				 type: "POST",
	
			  	dataType: "json",
				async: false,
  				success: function (data) {
  					rawMaterialList = data
  					
      					$('#rmGrade').empty();
  					   	$('#rmGrade').append('<option value="select">Select RM Grade</option>');
     					 for (i in rawMaterialList ) {
   		
       			   $('#rmGrade').append('<option value="' + rawMaterialList[i].rmGrade + '">' +rawMaterialList[i].rmGrade + '</option>');
      				}
 			 		}
		
					});
		
	}
	
//End  


//Get RM Shape Range 
function getRMShapeRangeLst()
{
	
	var rmShapeName=document.getElementById("rmShapeName");
	var rmshapenm = rmShapeName.options[rmShapeName.selectedIndex].value;
	var bgrade=document.getElementById("brmGrade");
	var brmGrade = bgrade.options[bgrade.selectedIndex].value;
	var dim1= $("#dim1").val();
	var dim2= $("#dim2").val();
	var dim3= $("#dim3").val();
	

			var rmshaperangeList;
			jQuery.ajax({
		 	url: "getJsonShapeRangeList.html?name="+rmshapenm+"&brmGrade=" +brmGrade+"&dim1=" +dim1+ "&dim2=" + dim2+ "&dim3=" + dim3,
			type: "POST",

		  	dataType: "json",
			async: false,
				success: function (data1) {
					rmshaperangeList = data1
					
					
  					$('#rmSizeRange').empty();
					   
 					 for (i in rmshaperangeList) {
 						
   			   $('#rmSizeRange').append('<option value="' + rmshaperangeList[i].rmSizeRange + '">' +rmshaperangeList[i].rmSizeRange + '</option>');
   					document.getElementById("density").value=rmshaperangeList[i].density
  				}
			 		}
	
				});
			
//End Range			
		getLowestSupplierLst();	
		
		
	
}




function getLowestSupplierLst()
{
	var rmSizeRange=document.getElementById("rmSizeRange");
	var rmSize = rmSizeRange.options[rmSizeRange.selectedIndex].value;
	var rmShapeName=document.getElementById("rmShapeName");
	var rmshapenm = rmShapeName.options[rmShapeName.selectedIndex].value;

	
			var supplierList;
			jQuery.ajax({
		 	url: "getJsonSupplierForQuotationList.html?name="+rmSize+"&rmshapenm=" +rmshapenm,
			type: "POST",

		  	dataType: "json",
			async: false,
				success: function (data1) {
					supplierList = data1
					
					
  					$('#supplierName').empty();
					   	$('#supplierName').append('<option value="">Select Supplier</option>');
 					 for (i in supplierList) {
 						
   			   $('#supplierName').append('<option value="' + supplierList[i].supplierName + '">' +supplierList[i].supplierName + '</option>');
  				}
			 		}
	
				});
	
}


$(document).ready(function(){
	$('#supplierName').change(function(event){
		var supplierName=document.getElementById("supplierName");
		var name =supplierName.options[supplierName.selectedIndex].value;
		
		var rmSizeRange=document.getElementById("rmSizeRange");
		var rmSize = rmSizeRange.options[rmSizeRange.selectedIndex].value;
		var rmShapeName=document.getElementById("rmShapeName");
		var rmshapenm = rmShapeName.options[rmShapeName.selectedIndex].value;
		
  		$.getJSON('getSupplierRateForQuotation.html',{name:name,rmSize:rmSize,rmshapenm:rmshapenm}).done(function(json ) {
  		
  			
  			document.getElementById("supplierRate").value=json[0].supplierRate;
  			
  			calculateRmAmt();
  		
  	  })
.fail(function( jqxhr, textStatus, error ) {
alert("fail");
});
});
});




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
					   	$('#itemCode').append('<option value="select">--Select--</option>');
 					 for (i in List ) {
		
   			 		  $('#itemCode').append('<option value="' + List[i].itemCode + '">' +List[i].itemCode + '</option>');
  				}
			 		}
	
				});
			
			
			
	
}

//end

$(document).ready(function(){
	$('#itemCode').change(function(event){
		
		var custName=document.getElementById("custName").value;

		var code=document.getElementById("itemCode");
		var itemCode = code.options[code.selectedIndex].value;
		
  		$.getJSON('getJsonItemdescnitemrate.html',{custName:custName,itemCode:itemCode}).done(function(json ) {
  		
  			
  			document.getElementById("itemDescription").value=json[0].itemDescription;
  			
  	  })
.fail(function( jqxhr, textStatus, error ) {
alert("fail");
});
});
});


     $(function() {
        $( "#qdate" ).datepicker();
        $( "#qdate" ).datepicker("show");
     });


     
     function hide() {

    	 $("#thickness").hide();
    	 $("#width").hide();
    	 $("#cstdiv").hide();
    	 $("#length").hide();
    	
    }
     
     hide();
     
     function showParameters()
     {
    	 var shapeName= $("#rmShapeName").val();
    	
    	if(shapeName=="Rectangel")
    		{
    			$("#thickness").show();
       			 $("#width").show();
       			 $('#text').html("WIDTH");
       			 $("#length").show();
       			
    		}
    	
    	
    	if(shapeName=="Round")
		{
			$("#thickness").hide();
   			 $("#width").show();
   			 $('#text').html("DIAMETER");
   			 $("#length").show();
   			 
   			
			
		}
    	
    	//getRMShapeRangeLst();
    	 
     }
     
     
   
     
     
     function saveQItemRMDetail() {
 		
 		
			// get the form values
			var qNo = $('#qNo').val();
		   	var custName = $('#custName').val();
		    var qdate = $('#qdate').val();
		    var itemCode = $('#itemCode').val();
		    var itemDescription = $('#itemDescription').val();
		    var rmGrade = $('#rmGrade').val();
		    var rmSizeRange = $('#rmSizeRange').val();
		    var supplierName = $('#supplierName').val();
		    var supplierRate = $('#supplierRate').val();
		    var rmWeight = $('#rmWeight').val();
		    var rmshape = $('#rmshape').val();
		    var shapeParameter = $('#shapeParameter').val();
		    var shapeDimension = $('#shapeDimension').val();
		    var rmShapeName = $('#rmShapeName').val();
		    var dim1 = $('#dim1').val();
		    var dim2 = $('#dim2').val();
		    var dim3 = $('#dim3').val();
		    var brmGrade = $('#brmGrade').val();
		    var pitemdesc = $('#pitemdesc').val();
		
		    $.ajax({
		    type: "POST",
		    url: "saveQItemRMDetail.html",
		    data: "custName=" + custName + "&qNo=" + qNo+ "&qdate=" + qdate+ "&itemCode=" +itemCode+ "&itemDescription=" +itemDescription+ "&rmGrade=" + rmGrade + "&rmSizeRange=" +rmSizeRange+ "&supplierName=" +supplierName+ "&supplierRate=" +supplierRate+ "&rmWeight=" + rmWeight+ "&rmshape=" + rmshape+ 
		    "&shapeParameter=" + shapeParameter+ "&shapeDimension=" + shapeDimension+ "&rmShapeName=" + rmShapeName+ "&dim1=" + dim1+  "&dim2=" + dim2+  "&dim3=" +dim3+ "&brmGrade=" + brmGrade+  "&pitemdesc=" + pitemdesc,
		    success: function(response){
		    // we have the response
		 	alert("Added Successfully")
		    $('#info').html(response);
			//location.href="customerPurchaseOrderInputRequest";
		 
		    },
		    error: function(e){
		    	alert(e)
		    	//location.href="customerPurchaseOrderInputRequest";
		  
		    }
		    });
		    
			
			}
	    
	
     function  gethomepage()
	  {
		  location.href="getSystems.html?moduleName=Quotation";
	  }
     
     
     //from field calculation
     
       function calculateRMWeight()
     {
    	 var shapeName= $("#rmShapeName").val();
    	 if(shapeName=="Rectangel")
 		{
    		 var dim1= $("#dim1").val();
    		 var dim2= $("#dim2").val();
    		 var dim3= $("#dim3").val();
    		 var density=$("#density").val();
    		 var mul=(parseFloat(dim1)*parseFloat(dim2)*parseFloat(dim3)*parseFloat(density));
    		 var weight=mul/(1000000);
    	
    		 
    		 document.getElementById("rmWeight").value=(weight).toFixed(2)
    		
    			
 		}
    	 
    	 
    	 if(shapeName=="Round")
  		{
     		
     		 var dim2= $("#dim2").val();
     		 var dim3= $("#dim3").val();
     		var density=$("#density").val();
     	
     		 var mul=(parseFloat(dim2)*parseFloat(dim2)*parseFloat(dim3)*parseFloat(density)*0.785);
     		 var weight=mul/(1000000);
     	
    		 document.getElementById("rmWeight").value=(weight).toFixed(2)
     			
  		}
    	 
     }
     
     
     
     

       function calculateRmAmt()
       {
       		var rmamt=parseFloat(document.getElementById("supplierRate").value)*parseFloat( document.getElementById("rmWeight").value);
			 document.getElementById("rmAmt").value=(rmamt).toFixed(2);
       	 	
       }

     
     function checkFormdata()
     {
    	 var flag=true
    	 if($("#custName").val()=="")
    		 {
    		 	alert("Please Enter Customer Name")
    		 	flag=false;
    		 }
    	 
    	 if($("#itemCode").val()==""||$("#itemCode").val()=="select")
		 {
		 	alert("Please Select Item Code")
		 	flag=false;
		 }
    	 if($("#rmGrade").val()==""||$("#rmGrade").val()=="select")
		 {
		 	alert("Please Select RM Grade")
		 	flag=false;
		 }
    	 if($("#rmWeight").val()=="")
		 {
		 	alert("RM Weight should not empty")
		 	flag=false;
		 }
    	 if($("#supplierRate").val()=="")
		 {
		 	alert("RM Should not empty")
		 	flag=false;
		 }
    	 if($("#rmShapeName").val()==""||$("#rmShapeName").val()=="select")
		 {
		 	alert("Please Select Shape")
		 	flag=false;
		 }
    	 if($("#rmSizeRange").val()==""||$("#rmSizeRange").val()=="select")
		 {
		 	alert("Please Enter RM Range")
		 	flag=false;
		 }
    	 if($("#rmAmt").val()=="")
		 {
		 	alert("RM should not empty")
		 	flag=false;
		 }
    	 if($("#brmGrade").val()==""||$("#brmGrade").val()=="select")
		 {
		 	alert("Please Select Basic RM Grade")
		 	flag=false;
		 }
    	 
    	 
    	 if($("#supplierName").val()==""||$("#supplierName").val()=="select")
		 {
		 	alert("Please Select Supplier")
		 	flag=false;
		 }
    	 
    	 if($("#qdate").val()=="")
		 {
		 	alert("Quotation Date should not empty")
		 	flag=false;
		 }
    	 
    	 
    	 if(flag)
    		 {
    		 	document.fname.submit();
    		 }
    	 
     }

</script>
