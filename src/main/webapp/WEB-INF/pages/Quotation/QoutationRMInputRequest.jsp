<html>
<head>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--==================== HEADER =========================-->
<jsp:directive.include file="../Homepages/header.jsp" />
<!--==================== NAVIGATION =========================-->

	<script src='<c:url value="/resources/js/jquery-1.11.3.min.js"/>'></script>
	<script src='<c:url value="/resources/js/jquery-ui.js"/>'></script>
	
	 
	 <link href="<c:url value="/resources/css/jquery-ui.css" />" rel="stylesheet">  
	 
	
    

<script>

$(document).ready(function() {
    $(function() {
    	
            $("#custName").autocomplete({     
            source : function(request, response) {
            $.ajax({
                    url : "getCustNameList",
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

 
function getRawMaterialLst()
	{
	
		var brmGrade=document.getElementById("brmGrade");
		var brawmaterialname = brmGrade.options[brmGrade.selectedIndex].value;
		
		
				var rawMaterialList;
				jQuery.ajax({
			 	 url: "getJsonRawMaterialList?name="+brawmaterialname,
 				 type: "POST",
	
			  	dataType: "json",
				async: false,
  				success: function (data) {
  					rawMaterialList = data
  					
      					$('#rmGrade').empty();
  					   	$('#rmGrade').append('<option value="">Select RM Grade</option>');
     					 for (i in rawMaterialList ) {
   		
       			   $('#rmGrade').append('<option value="' + rawMaterialList[i].rmGrade + '">' +rawMaterialList[i].rmGrade + '</option>');
      				}
 			 		}
		
					});
		
	}
	

function getRMShapeRangeLst()
{
	
	var rmShapeName=document.getElementById("rmShapeName");
	var rmshapenm = rmShapeName.options[rmShapeName.selectedIndex].value;
	
			var rmshaperangeList;
			jQuery.ajax({
		 	url: "getJsonShapeRangeList?name="+rmshapenm,
			type: "POST",

		  	dataType: "json",
			async: false,
				success: function (data1) {
					rmshaperangeList = data1
					
					
  					$('#rmSizeRange').empty();
					   	$('#rmSizeRange').append('<option value="">Select Range</option>');
 					 for (i in rmshaperangeList) {
 						
   			   $('#rmSizeRange').append('<option value="' + rmshaperangeList[i].rmSizeRange + '">' +rmshaperangeList[i].rmSizeRange + '</option>');
  				}
			 		}
	
				});
			
			
			
		
		
	
}

/*
function getShapeDimensions()
{

	var rmShapeName=document.getElementById("rmShapeName");
	var rmshapenm = rmShapeName.options[rmShapeName.selectedIndex].value;
	
			var rmDimensionList;
			jQuery.ajax({
		 	url: "getJsonShapeDimensionList?name="+rmshapenm,
			type: "POST",

		  	dataType: "json",
			async: false,
				success: function (data1) {
					rmDimensionList = data1
					
					
  					$('#rmShapeParameter').empty();
					   	$('#rmShapeParameter').append('<option value="">Select Parameter</option>');
 					 for (i in rmDimensionList) {
 						
   			   $('#rmShapeParameter').append('<option value="' + rmDimensionList[i].shapeParameter + '">' +rmDimensionList[i].shapeParameter + '</option>');
  				}
			 		}
	
				});
			
			
			
		
		
	
}*/


function getLowestSupplierLst()
{
	var rmSizeRange=document.getElementById("rmSizeRange");
	var rmSize = rmSizeRange.options[rmSizeRange.selectedIndex].value;

	
			var supplierList;
			jQuery.ajax({
		 	url: "getJsonSupplierForQuotationList?name="+rmSize,
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
		
  		$.getJSON('getSupplierRateForQuotation',{name:name,rmSize:rmSize}).done(function(json ) {
  		
  			
  			document.getElementById("supplierRate").value=json[0].supplierRate;
  		
  	  })
.fail(function( jqxhr, textStatus, error ) {
alert("fail");
});
});
});


function getcustItemList()
{
	
	var custName=document.getElementById("custName").value;
	
	
			var List;
			jQuery.ajax({
		 	url: "getJsonItemcodelist?custName="+custName,
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



$(document).ready(function(){
	$('#itemCode').change(function(event){
		
		var custName=document.getElementById("custName").value;

		var code=document.getElementById("itemCode");
		var itemCode = code.options[code.selectedIndex].value;
		
  		$.getJSON('getJsonItemdescnitemrate',{custName:custName,itemCode:itemCode}).done(function(json ) {
  		
  			
  			document.getElementById("itemDescription").value=json[0].itemDescription;
  			
  	  })
.fail(function( jqxhr, textStatus, error ) {
alert("fail");
});
});
});


/*
$(document).ready(function(){
	$('#rmWeight').focus(function(event){
	
		var rmGrade=document.getElementById("rmGrade");
		var rmname =rmGrade.options[rmGrade.selectedIndex].value;
		
		var rmShapeName=document.getElementById("rmShapeName");
		var rmshapenm = rmShapeName.options[rmShapeName.selectedIndex].value; 
		var qNo=$("#qNo").val();
	
  		$.getJSON('calculateRMRate',{rmname:rmname,rmshapenm:rmshapenm,qNo:qNo}).done(function(json) {
  			
  			
  			document.getElementById("rmWeight").value=json[0].rmWeight;
  		
  	  })
.fail(function( jqxhr, textStatus, error ) {
alert("fail");
});
});
});

*/

	/* $(document).ready(function()
			 {
		 	
			$('#saveQShapeDetail').click(function(e) 
					{
						e.preventDefault();
						var flag=true;
						var qNo = $("#qNo").val();
	 					var itemCode = $("#itemCode").val();
 						var shapeName= $("#rmShapeName").val();
 						var shapeParameter = $("#rmShapeParameter").val();
 						var shapeDimension= $("#shapeDimension").val();
 						if (itemCode=="")
						{
							flag = false;
							alert("Enter Item Code")
						}
 						
 						if (shapeDimension=="")
						{
							flag = false;
							alert("Enter Shape Dimension")
						}
 						
 						if(flag==true)
						{
							$.ajax({
											url: "saveQShapeDetail",
											data:{qNo : qNo,itemCode:itemCode,shapeName :shapeName,shapeParameter :shapeParameter,shapeDimension : shapeDimension},
											cache: false,
											success: function(data) 
											{
												alert("Added"+" "+shapeParameter)
												  $('#shapeDimension').val('');
							
											}
									});
						}
				});
			});
	 
	 */
	
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
    	
    	getRMShapeRangeLst();
    	 
     }
     
     
     function calculateRMWeight()
     {
    	 var shapeName= $("#rmShapeName").val();
    	 if(shapeName=="Rectangel")
 		{
    		 var dim1= $("#dim1").val();
    		 var dim2= $("#dim2").val();
    		 var dim3= $("#dim3").val();
    		 var mul=(parseFloat(dim1)*parseFloat(dim2)*parseFloat(dim3));
    		 var weight=mul/(1000*1000);
    		 document.getElementById("rmWeight").value=weight
    		
    			
 		}
    	 
    	 
    	 if(shapeName=="Round")
  		{
     		
     		 var dim2= $("#dim2").val();
     		 var dim3= $("#dim3").val();
     		 var mul=(parseFloat(dim2)*parseFloat(dim3));
     		 var weight=mul/(1000*1000);
    		 document.getElementById("rmWeight").value=weight
     			
  		}
    	 
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
    		    url: "saveQItemRMDetail",
    		    data: "custName=" + custName + "&qNo=" + qNo+ "&qdate=" + qdate+ "&itemCode=" +itemCode+ "&itemDescription=" +itemDescription+ "&rmGrade=" + rmGrade
    		    + "&rmSizeRange=" +rmSizeRange+ "&supplierName=" +supplierName+ "&supplierRate=" +supplierRate+ "&rmWeight=" + rmWeight+ "&rmshape=" + rmshape+ 
    		    "&shapeParameter=" + shapeParameter+ "&shapeDimension=" + shapeDimension+ "&rmShapeName=" + rmShapeName+ "&dim1=" + dim1+ 
    		    "&dim2=" + dim2+ 
    		    "&dim3=" +dim3+ 
    		    "&brmGrade=" + brmGrade+ 
    		    "&pitemdesc=" + pitemdesc,
    		    success: function(response){
    		    // we have the response
    		    $('#info').html(response);
    			//location.href="customerPurchaseOrderInputRequest";
    		 
    		    },
    		    error: function(e){
    		    	alert("Creating New Sales Order")
    		    	//location.href="customerPurchaseOrderInputRequest";
    		  
    		    }
    		    });
    		    
    			
    			}
    	    
    	       	    
    

</script>

</head>
<body onload="hide()">

<!--==================== PAGE CONTENT START =========================-->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Create Quotation</h1>
                    </div>
                 
                </div>
           
				<form role="form" action="saveQuotationDetail" method="post">
				<!-- TABLE STARTS HERE --->
				<div class="row">
					<div class="col-lg-12">
					
						
							<div class="col-md-5">
								<label>Customer Name</label>
								<input type="text" class="form-control" id="custName" name="custName" class="search" onblur="getcustItemList()" />
							</div>
							
						
							
							<div class="col-md-3">
								<label>Quotation Number</label>
								<input type="text" class="form-control" id="qNo" name="qNo"  readonly="readonly" value="${qno}"  placeholder="" />
							</div>
							
							<div class="col-md-3">
								<label>Quotation Date</label>
								<input type="text" class="form-control" name="qdate" id="qdate" placeholder="" />
							</div>
						
						</div>
					
			
					<div class="clearfix" style="margin:30px 0px;"></div>
					<div class="col-lg-12">
					
							<div class="col-md-3">
								<label>Item Code</label>
								<select class="form-control" id="itemCode" name="itemCode" class="form-control"></select>
							</div>
							
							<div class="col-md-7">
								<label>Item Description</label>
								<input type="text" class="form-control" id="itemDescription" name="itemDescription" placeholder="" />
							</div>
							
						
							
					</div>
					
					<div class="clearfix" style="margin:30px 0px;"></div>
					<div class="col-lg-12">
					
							<div class="col-md-4">
								<label>Basic RM Grade</label>
								<select class="form-control" onchange="getRawMaterialLst()" name="brmGrade" id="brmGrade">
								<option>--Select--</option>
											<c:if test="${not empty brmgradelst}">
             		           					<c:forEach var="listValue" items="${brmgradelst}">
             		           						<option value="${listValue}">${listValue}</option>
												</c:forEach>
											</c:if>
								</select>
							</div>
							
							<div class="col-md-4">
								<label>RM Sub Grade</label>
								<select class="form-control" name="rmGrade" id="rmGrade"></select>
							</div>
							
							<div class="col-md-3">
								<label>Raw Material Shape</label>
								<select class="form-control" name="rmShapeName" id="rmShapeName" onchange="showParameters()">
									<option>--Select--</option>
									<option>Round</option>
									<option>Rectangel</option>
								</select>
							
							</div>
						
					</div>
					
					
					
					<div class="clearfix" style="margin:30px 0px;"></div>
					
					<div class="col-lg-12">
						
						
							<div class="col-md-2" id="thickness">
								<label>THICKNESS</label>
								<input type="text" id="dim1" name="dim1"  class="form-control" placeholder=""  />
							</div>
							
							<div class="col-md-2" id="width">
								<label><span id="text">WIDTH</span></label>
								<input type="text" id="dim2" name="dim2"   class="form-control" placeholder=""/>
							</div>
							
							<div class="col-md-2" id="length">
								<label>LENGTH</label>
								<input type="text" id="dim3" name="dim3"   class="form-control" placeholder="" onblur="calculateRMWeight()"/>
							</div>
							
							<div class="col-md-2" >
								<label>RM Weight</label>
								<input type="text" id="rmWeight" name="rmWeight"  readonly="readonly" class="form-control" placeholder="" />
							</div>
							
							
					</div>
					
					<div class="clearfix" style="margin:30px 0px;"></div>
					
					<div class="col-lg-12">
						
							<div class="col-md-4">
								<label>RM Shape Range</label>
								<select class="form-control" id="rmSizeRange" name="rmSizeRange" onchange="getLowestSupplierLst()"></select>
							
							</div>
							
							<div class="col-md-4">
								<label>Supplier</label>
								<select class="form-control" name="supplierName" id="supplierName"></select>
							
							</div>
							
							
							
							<div class="col-md-3">
								<label>Raw Material Rate</label>
								<input type="text" class="form-control" id="supplierRate" name="supplierRate" readonly="readonly" placeholder="" />
							</div>
							
					</div>		
					<div class="clearfix" style="margin:30px 0px;"></div>
					
					<div class="col-lg-12">
						
							
							
								
					</div>
					
					<div class="clearfix" style="margin:30px 0px;"></div>
					
					<hr/>
					
					
					<div class="col-lg-12">
						
							<div class="col-md-4">
								<input type="button" class="btn btn-success" value="Save" onclick="saveQItemRMDetail()"/>
							</div>
						
					</div>
					
					<div class="clearfix" style="margin:30px 0px;"></div>
				
            </div>
            </form>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    
    </body>
    <!-- /#wrapper -->
<!--==================== PAGE CONTENT END =========================-->

	
<!--==================== FOOTER =========================-->

</body>
</html>

