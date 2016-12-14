
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
</head>
<%@ include file="/WEB-INF/pages/template/headeremployee.jsp"%>
<%@ include file="/WEB-INF/pages/template/leftmenu.jsp"%>
<!--==================== PAGE CONTENT START =========================-->

<fieldset class="fieldset-style">
		<form method="post" enctype="multipart/form-data"  action="saveEmployeeDetail.html">  
	<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Add New Employee</div>
						<div class="span2" align="right">
							<!-- <button class="btn-save" title="Save" onclick="createUser();" id="btnsave"></button> -->
							<!-- <button class="btn-save" title="Save" type="submit"></button> -->
							<input type="submit" class="btn-save" value=""/>				
							<div class="btn" title="Cancel" onclick="clearForm();" id="btnclear">
								<i class="icon-trash"></i>
								<!-- <input type="reset" class="btn btn-default" value="Clear Details" /> -->
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="container-fluid panel-body">
				<div class="row-fluid search-align">
					<div class="firstquad">
						<div class="control-group">
							<label class="control-label">Employee ID</label>
							<div class="controls">
								<input type="text" class="form-control" name="EmployeeId" id="EmployeeId" value="${empid}" readonly="readonly" placeholder="" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Last name</label>
							<div class="controls">
								<input type="text" class="form-control" name="Lastname" required="required" id="Lastname" placeholder="" />
							</div>
						</div>
						 <div class="control-group">
							<label class="control-label">permanent Address</label>
							<div class="controls">
								<textarea type="text" rows="5" class="form-control" required="required"  name="pAddress" id="pAddress" placeholder=""></textarea>
							</div>
						</div>
						<div class="control-group">
								<label class="control-label">Select Country</label>
								<div class="controls">
									<select class="form-control" name="pCoutry" id="pCoutry" onchange="getpStateLst()">
										<option>--Select Country--</option>
											<c:if test="${not empty countryllst}">
             		           					<c:forEach var="listValue" items="${countryllst}">
             		           						<option value="${listValue}">${listValue}</option>
												</c:forEach>
											</c:if>
									</select>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Select State</label>
								<div class="controls">
									<select class="form-control" name="pState" id="pState" onchange="getpDistrictLst()">
											<option></option>
										</select>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Select District</label>
								<div class="controls">
									<select class="form-control" name="pDistrict" id="pDistrict" onchange="getpTalukaLst()">
											<option></option>
										</select>
								</div>
							</div>
								<div class="control-group">
								<label class="control-label">Taluka</label>
								<div class="controls">
									<select class="form-control" name="pTaluka" id="pTaluka">
											<option></option>
										</select>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Zip Code</label>
								<div class="controls">
									<input type="text" class="form-control" name="pZipCode" id="pZipCode" placeholder="" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Email</label>
								<div class="controls">
									<input type="email" class="form-control" name="email1" id="email1" placeholder="" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Conatct No1.</label>
								<div class="controls">
									<input type="text" class="form-control"  name="contactNo1" id="contactNo1" placeholder="" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Usrename</label>
								<div class="controls">
									<input type="text" class="form-control" required="required"  name="userName" id="userName" placeholder="" />
								</div>
							</div>
							
						</div>
					
					<!-- 	2 Column -->
					
					<div class="firstquad">
						<div class="control-group">
							<label class="control-label">First name</label>
							<div class="controls">
								<input type="text" class="form-control" name="Firstname" id="Firstname"  required="required"  placeholder="" />
							</div>
						</div>

						<div class="control-group">
							<label class="control-label">Short Name</label>
							<div class="controls">
								<input type="text" class="form-control" name="Shortname"  id="Shortname" placeholder="" />
							</div>
						</div>


							<div class="control-group">
								<label class="control-label">Current Address</label>
									<div class="controls">
										<textarea type="text" rows="5" class="form-control"
											required="required" name="cAddress" id="cAddress"
											placeholder=""></textarea>
									</div>
							</div>
							<div class="control-group">
								<label class="control-label">Select Country</label>
								<div class="controls">
									<select class="form-control" name="cCoutry" id="cCoutry" onchange="getcStateLst()">
										<option>--Select Country--</option>
											<c:if test="${not empty countryllst}">
             		           					<c:forEach var="listValue" items="${countryllst}">
             		           						<option value="${listValue}">${listValue}</option>
												</c:forEach>
											</c:if>
										</select>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Select State</label>
								<div class="controls">
									<select class="form-control" name="cState" id="cState" onchange="getcDistrictLst()">
											<option></option>
										</select>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Select District</label>
								<div class="controls">
									<select class="form-control" name="cDistrict" id="cDistrict" onchange="getcTalukaLst()">
											<option></option>
										</select>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Taluka</label>
								<div class="controls">
									<select class="form-control" name="cTaluka" id="cTaluka">
											<option></option>
										</select>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Zip Code</label>
								<div class="controls">
									<input type="text" class="form-control" name="cZipCode"  id="cZipCode" placeholder="" />
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label">Email</label>
								<div class="controls">
									<input type="email" class="form-control" name="email2"  id="email2" placeholder="" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Conatct No1.</label>
								<div class="controls">
									<input type="text" class="form-control"  name="contactNo2" id="contactNo2" placeholder="" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Password</label>
								<div class="controls">
									<input type="password" class="form-control"  required="required"  name="password" id="password" placeholder="" />
								</div>
							</div>
					
							
							
						</div>
						<!-- 3 column -->
					<div class="firstquad">
						<div class="control-group">
							<label class="control-label">Middle name</label>
							<div class="controls">
								<input type="text" class="form-control" name="Middlename" required="required"  id="Middlename" placeholder="" >
							</div>
						</div>
						<div class="firstquad">
						<div class="control-group">
							<label class="control-label">Upload Photo</label>
							<div class="controls">
								<input type="file" name="file" class="form-control"/> 
							</div>
						</div>
						
						
						
						<!--<div class="control-group">
							<label class="control-label">Local Address</label>
							<div class="controls">
								<textarea style="width: 207px; height: 60px;" id="idlocaladd" name="users.address.localAddress" spellcheck="false"></textarea>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Temporary Password</label>
							<div class="controls">
								<input type="text" id="idtemppass" name="systems.password">
							</div>
						</div> -->
					</div>
				</div>
			</div>
		</div>
	<!-- </form> -->
	</div>
</fieldset>


<!--==================== PAGE CONTENT END =========================-->


<%@ include file="/WEB-INF/pages/template/footer.jsp"%>
<script>
	function getpStateLst() {

		var countryName = document.getElementById("pCoutry");
		var country = countryName.options[countryName.selectedIndex].value;

		var countryList;
		jQuery.ajax({
			url : "getJsonStateList.html?name=" + country,
			type : "POST",

			dataType : "json",
			async : false,
			success : function(data) {
				countryList = data

				$('#pState').empty();
				$('#pState').append('<option value="">Select State</option>');
				for (i in countryList) {

					$('#pState').append(
							'<option value="' + countryList[i].stateName + '">'
									+ countryList[i].stateName + '</option>');
				}
			}

		});

	}

	function getcStateLst() {

		var countryName = document.getElementById("cCoutry");
		var country = countryName.options[countryName.selectedIndex].value;

		var countryList;
		jQuery.ajax({
			url : "getJsonStateList.html?name=" + country,
			type : "POST",

			dataType : "json",
			async : false,
			success : function(data) {
				countryList = data

				$('#cState').empty();
				$('#cState').append('<option value="">Select State</option>');
				for (i in countryList) {

					$('#cState').append(
							'<option value="' + countryList[i].stateName + '">'
									+ countryList[i].stateName + '</option>');
				}
			}

		});

	}

	function getpDistrictLst() {

		var stateName = document.getElementById("pState");
		var state = stateName.options[stateName.selectedIndex].value;

		var stateList;
		jQuery.ajax({
			url : "getJsonDistrictList.html?name=" + state,
			type : "POST",

			dataType : "json",
			async : false,
			success : function(data1) {
				stateList = data1

				$('#pDistrict').empty();
				$('#pDistrict').append(
						'<option value="">Select Districta</option>');
				for (i in stateList) {

					$('#pDistrict').append(
							'<option value="' + stateList[i].districtName + '">'
									+ stateList[i].districtName + '</option>');
				}
			}

		});

	}

	function getcDistrictLst() {

		var stateName = document.getElementById("cState");
		var state = stateName.options[stateName.selectedIndex].value;

		var stateList;
		jQuery.ajax({
			url : "getJsonDistrictList.html?name=" + state,
			type : "POST",

			dataType : "json",
			async : false,
			success : function(data1) {
				stateList = data1

				$('#cDistrict').empty();
				$('#cDistrict').append(
						'<option value="">Select Districta</option>');
				for (i in stateList) {

					$('#cDistrict').append(
							'<option value="' + stateList[i].districtName + '">'
									+ stateList[i].districtName + '</option>');
				}
			}

		});

	}

	function getpTalukaLst() {
		var districtName = document.getElementById("pDistrict");
		var district = districtName.options[districtName.selectedIndex].value;

		var talukaList;
		jQuery
				.ajax({
					url : "getJsonTalukaList.html?name=" + district,
					type : "POST",

					dataType : "json",
					async : false,
					success : function(data1) {
						talukaList = data1

						$('#pTaluka').empty();
						$('#pTaluka').append(
								'<option value="">Select Taluka</option>');
						for (i in talukaList) {

							$('#pTaluka').append(
									'<option value="' + talukaList[i].talukaName + '">'
											+ talukaList[i].talukaName
											+ '</option>');
						}
					}

				});

	}
	function getcTalukaLst() {
		var districtName = document.getElementById("cDistrict");
		var district = districtName.options[districtName.selectedIndex].value;

		var talukaList;
		jQuery
				.ajax({
					url : "getJsonTalukaList.html?name=" + district,
					type : "POST",
					dataType : "json",
					async : false,
					success : function(data1) {
						talukaList = data1
						$('#cTaluka').empty();
						$('#cTaluka').append(
								'<option value="">Select Taluka</option>');
						for (i in talukaList) {

							$('#cTaluka').append(
									'<option value="' + talukaList[i].talukaName + '">'
											+ talukaList[i].talukaName
											+ '</option>');
						}
					}

				});
	}
</script>


