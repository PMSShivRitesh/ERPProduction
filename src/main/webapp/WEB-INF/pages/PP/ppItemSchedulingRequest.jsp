<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--==================== HEADER =========================-->
<jsp:directive.include file="../Homepages/header.jsp" />
<!--==================== NAVIGATION =========================-->
<script src='<c:url value="/resources/js/jquery-1.11.3.min.js"/>'></script>
<script src='<c:url value="/resources/js/jquery-ui.js"/>'></script>

<link href="<c:url value="/resources/js/jquery-ui.css" />"
rel="stylesheet">

<script type="text/javascript">

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




function getCustomerPosLst()
{
	var custName=document.getElementById("custName").value;
	var custPoList;
			jQuery.ajax({
		 	url: "getJsonCustPoNoList?name="+custName,
			type: "POST",

		  	dataType: "json",
			async: false,
				success: function (data1) {
					custPoList = data1
					
					
  					$('#custPoNo').empty();
					$('#custPoNo').append('<option value="">Select</option>');
 					 for (i in custPoList) {
 						
   			   $('#custPoNo').append('<option value="' + custPoList[i].poNo + '">' +custPoList[i].poNo + '</option>');
  				}
			 		}
	
				});
	
}


function getItemCodeLst()
{
	var num=document.getElementById("custPoNo");
	var poNum = num.options[num.selectedIndex].value;
	
	var pendingItemList;
			
	jQuery.ajax({
		 		 url: "getcustSalesOrderPendingItemLst?poNum="+poNum,
				 type: "POST",

		  		dataType: "json",
				async: false,
				success: function (data) {
					pendingItemList = data
				
					$('#itemcode').empty();
					$('#itemcode').append('<option value="">Select</option>');
 					 for (i in pendingItemList) {
 						
   			  		 $('#itemcode').append('<option value="' + pendingItemList[i].itemCode + '">' +pendingItemList[i].itemCode + '</option>');
  				}
			 		}
	
				});
	
}


$(document).ready(function(){
	$('#itemcode').change(function(event){
		var code=document.getElementById("itemcode");
		var itemcode =code.options[code.selectedIndex].value;
		
		var num=document.getElementById("custPoNo");
		var custPoNo =num.options[num.selectedIndex].value;
		
  		$.getJSON('getQtyandDelDateOfcustOrderItem',{itemcode:itemcode,custPoNo:custPoNo}).done(function(json ) {
  		
  			
  			document.getElementById("qty").value=json[0].qty;
  			document.getElementById("deldate").value=json[0].dilDate;
  			
  		
  	  })
.fail(function( jqxhr, textStatus, error ) {
alert("fail");
});
});
});




function schedulejob() {
    // get the form values
    var itemCode = $('#itemcode').val();
 	var qty = $('#qty').val();
 	var custName = $('#custName').val();
 	var custPoNo = $('#custPoNo').val();
 	var deldate = $('#deldate').val();
 	var scheduleDate = $('#scheduleDate').val();
 	
    $.ajax({
    type: "POST",
    url: "schedulejob",
    data: "itemCode=" + itemCode + "&qty=" + qty+ "&custName=" + custName+ "&custPoNo=" + custPoNo+ "&deldate=" + deldate+ "&scheduleDate=" + scheduleDate,
    success: function(response){
  	
    	
    
    },
    error: function(e){
    alert('Error: ' + e);
    }
    });
    }


</script>
</head>

<!--==================== PAGE CONTENT START =========================-->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Process Scheduling</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
					
				<!-- TABLE STARTS HERE --->
				<div class="row">
				<form role="form" action="getProcessState">
					<div class="col-lg-12">
					
							<label>Customer / company Name</label>
							<div class="clearfix"></div>
							<div class="col-md-10">
								<input type="text" name="custName" value="${custName}" id="custName" class="form-control" placeholder="" />
							</div>
							<div class="col-md-2">
								<input type="button" class="btn btn-success" value="Get" onclick="getCustomerPosLst()" />
							</div>
						
					</div>
					
					<div class="clearfix" style="margin:30px 0px;"></div>
					<hr/>
					
					<div class="col-lg-12">
						
							<div class="col-md-6">
								<label>Select purchase Order Number</label>
								<select class="form-control" name="custPoNo" id="custPoNo" onchange="getItemCodeLst()">
								<option>${custPoNo}</option>
								</select>
							</div>
							
							<div class="col-md-6">
								<label>Select Item Code</label>
								<select class="form-control" name="itemCode" id="itemcode">
								<option>${itemcode}</option>
								</select>
							</div>
					
					</div>
					
					<div class="clearfix" style="margin:30px 0px;"></div>
					
					<div class="col-lg-12">
						
							<div class="col-md-2">
								<label>Qty</label>
								<input type="text" id="qty" name="qty"  value="${qty}" class="form-control" readonly="readonly"  placeholder="" />
							</div>
							
							<div class="col-md-4">
								<label>Del Date</label>
								<input type="text" id="deldate" name="deldate" value="${deldate}" class="form-control"  readonly="readonly" placeholder="" />
							</div>
							
							<div class="col-md-4">
								<label>Schedule Date</label>
								<input type="text" class="form-control" placeholder="" />
							</div>
							
							
							<div class="col-md-2">
							<br>
							<input type="submit" class="btn btn-success" value="Process State" />
							</div>
						
					</div>
				</form>
					<div class="clearfix" style="margin:30px 0px;"></div>
					
					<hr/>
					
					
					
					<div class="row">
						<div class="col-lg-12 text-center">
							<h4>Current Process Status</h4>
						</div>
						<!-- /.col-lg-12 -->
					</div> 
					
					<div class="col-lg-12">
							
						<!-- /.panel-heading -->
						
							<div class="dataTable_wrapper">
								<table class="table table-striped table-bordered table-hover">
									<thead>
										<tr>
											<th>Sr No </th>
											<th>Process Name</th>
											<th>Scheduled Qty</th>
											<th>Scheduled Time</th>
										</tr>
									</thead>
									<tbody>
										
											<c:if test="${not empty ppallProcessDetaillst}">
												
             		           					<c:forEach var="listValue" items="${ppallProcessDetaillst}">
             		           					<tr class="">
             		           						<td>${1}</td>
             		           						<td>${listValue.processName}</td>
             		           						<td>${listValue.scheduledQty}</td>
             		           						<td>${listValue.scheduledTime}</td>
             		           						
             		           					</tr>
												</c:forEach>
											</c:if>
											
									</tbody>
								</table>
							</div>
						</div>
					</div>
					
					<div class="clearfix" style="margin:30px 0px;"></div>
					
					<hr/>
					
					<div class="row">
						<div class="col-lg-12 text-center">
							<h4>Require Schedule</h4>
						</div>
						<!-- /.col-lg-12 -->
					</div> 
					
					<div class="col-lg-12">
							
						<!-- /.panel-heading -->
						
							<div class="dataTable_wrapper">
								<table class="table table-striped table-bordered table-hover">
									<thead>
										<tr>
											<th>Sr No </th>
											<th>Process Name</th>
											
											<th>Cust Time</th>
											<th>Shop Time</th>
										</tr>
									</thead>
									<tbody>
										
											<c:if test="${not empty qitempcocessDetaillst}">
												
             		           					<c:forEach var="listValue" items="${qitempcocessDetaillst}">
             		           					<tr class="">
             		           						<td>${1}</td>
             		           						<td>${listValue.processName}</td>
             		           						<td>${listValue.custTime}</td>
             		           						<td>${listValue.shopTime}</td>
             		           						
             		           					</tr>
												</c:forEach>
											</c:if>
											
									</tbody>
								</table>
							</div>
						</div>
					</div>
					
					<div class="clearfix" style="margin:30px 0px;"></div>
					
					<div class="col-lg-12">
						<form role="form">
							<div class="col-md-4">
								<input type="button" onclick="schedulejob()" class="btn btn-success" value="Schedule" />
								&nbsp;
								<input type="submit" class="btn btn-default" value="Cancel" />
							</div>
						</form>
					</div>
					<div class="clearfix"></div>
					<div class="clearfix" style="margin:30px 0px;"></div>
				
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
<!--==================== PAGE CONTENT END =========================-->

	
<!--==================== FOOTER =========================-->


