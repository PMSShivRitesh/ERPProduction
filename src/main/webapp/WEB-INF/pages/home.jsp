<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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

<body>
	<%-- <%
		if (session.getAttribute("role") == "TEAMMEMBER"
				|| session.getAttribute("role").equals("TEAMMEMBER")
				|| session.getAttribute("role") == "MANAGER"
				|| session.getAttribute("role").equals("MANAGER")) {
	%> --%>
	<%@ include file="/WEB-INF/pages/template/headeremployee.jsp"%>
	<%-- <%
		} else if (session.getAttribute("role") == "ADMIN"
				|| session.getAttribute("role").equals("ADMIN")) {
	%>
	<%@ include file="WEB-INF/Pages/template/headeradmin.jsp"%>
	<%
		}
	%>	
	 --%>
	<%@ include file="/WEB-INF/pages/template/leftmenu.jsp"%>

	<%-- <%
		if (session.getAttribute("role") == "TEAMMEMBER"
				|| session.getAttribute("role").equals("TEAMMEMBER")
				|| session.getAttribute("role") == "MANAGER"
				|| session.getAttribute("role").equals("MANAGER")) {
	%> --%>
	<%@ include file="/WEB-INF/pages/template/homeemployeebody.jsp"%>
	<%-- <%
		} else if (session.getAttribute("role") == "ADMIN"
				|| session.getAttribute("role").equals("ADMIN")) {
	%>
	<%@ include file="/Pages/admin/homeadminbody.jsp"%>
	<%
		}
	%>
 --%>
	<%@ include file="/WEB-INF/pages/template/footer.jsp"%>

<%-- 	<input type="hidden" value=${sessionScope.role } id="role">
	<input type="hidden" value=${sessionScope.empid } id="empid"> --%>

</body>
</html>