<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Home</title>
<link rel="icon" type="image/png" href="/RMT/images/favicon.ico">
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script src="bootstrap/js/bootstrap-dropdown.js"></script>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/login.css" type="text/css">
<link rel="stylesheet" href="css/panel.css" type="text/css">
<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<link href="bootstrap/css/docs.css" rel="stylesheet">
<%@ include file="/WEB-INF/pages/template/headeremployee.jsp"%>
<%@ include file="/WEB-INF/pages/template/leftmenu.jsp"%>
<!--==================== PAGE CONTENT START =========================-->
<fieldset class="fieldset-style">
		<div class="alert alert-success" id="idsuccess">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<i class="icon-thumbs-up"></i>Records added successfully!
		</div>
		<script type="text/javascript">
		$("#idsuccess").hide();
		</script>
		
	<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">User Modules Access</div>
						<div class="span2" align="right">
							<input type="button" class="btn-save" value="" onclick="allocateModule();"/>				
							<div class="btn" title="Cancel" onclick="clearForm();" id="btnclear">
								<i class="icon-trash"></i>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="container-fluid panel-body">
				<div class="row-fluid search-align">
					<div class="firstquad">
						<div class="control-group">
							<label class="control-label">Select Module</label>
							<div class="controls">
								<select class="form-control" name="moduleName" id="moduleName">
										<option>Select</option>
											<c:if test="${not empty lists}">
             		           					<c:forEach var="list" items="${lists}">
             		           						<option value="${list}">${list}</option>
												</c:forEach>
											</c:if>
									</select>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Employee No</label>
							<div class="controls">
								<input type="text" class="form-control" id="empcode" name="empcode" class="search" />
							</div>
						</div>
								
						</div>
					
					<!-- 	2 Column -->
					<div class="firstquad"> </div>
						
					<!-- 3 column -->
					<div class="firstquad"> </div>
				</div>
			</div>
		</div>
	</div>
</fieldset>

<!--==================== PAGE CONTENT END =========================-->
<%@ include file="/WEB-INF/pages/template/footer.jsp"%>




<script>
function allocateModule() {
    // get the form values
    var empcode = $('#empcode').val();
    var moduleName = $('#moduleName').val();
   
    $.ajax({
    type: "POST",
    url: "allocateModule.html",
    data: "empcode=" + empcode + "&moduleName=" + moduleName,
    success: function(response){
    // we have the response
    $('#info').html(response);
    
    $("#idsuccess").show();
    $("#idsuccess").html("<button type='button' class='close' data-dismiss='alert' onclick='hide();'>&times;</button><i class='icon-thumbs-up'></i>"+
    		response);
    $('#empcode').val('');
    },
    error: function(e){
    alert('Error: ' + e);
    }
    });
    }
    
    function hide(){
    	$("#idsuccess").hide();
    }

</script>