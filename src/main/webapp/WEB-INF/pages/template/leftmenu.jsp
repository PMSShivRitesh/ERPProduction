<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
	$(document).ready(function(){
	
		/* var role= $("#role").val();
		$.ajax({
		url : "accessActionGetMenusList.action",
		type : "GET",
		data: 'role='+role,
		dataType : 'json',

		success : function(data) {
			$.each(data, function (key, value) {
				var menuid=value.menus.menuTitle;
				menuid=menuid.replace(/ +/g, '');
				$('#idmenus').append('<li id="'+menuid+'"><a href="'+value.menus.menuUrl+'"><i class="'+value.menus.menuIcon+'"></i><i class="icon-chevron-right"></i>'+value.menus.menuTitle+'</a></li>');
		     });
		}
	});  */
		
		/* $.ajax({
			url : "accessActiongetMenusList.action",
			type : "GET",
			data: 'role='+sessionValue,
			dataType : 'json',

			success : function(data) {
				var obj = JSON.parse(data.jsonString);
				
				$.each(obj, function (key, value) {
					
					 $.each(value, function (key, value) {
						 var menutitle=null;
						 var menulink=null;
						 var menuicon=null;
						 
						 if(key=="menus"){
							 $.each(value, function (key, value) {
								 if(key=="menuTitle"){
									 menutitle=value;
								 }
								 if(key=="menuUrl"){
									 menulink=value;
								 }
								 if(key=="menuIcon"){
									 menuicon=value;
								 }
				    		});
							 var menuid=menutitle;
							 menuid=menuid.replace(/ +/g, '');
							 $('#idmenus').append('<li id="'+menuid+'"><a href="'+menulink+'"><i class="'+menuicon+'"></i><i class="icon-chevron-right"></i>'+menutitle+'</a></li>');
						 }
					 });
			    	
			     });
			}
		}); */
	});
</script>

<div class="span3 bs-docs-sidebar" style="width:15%;">
	<ul class="nav nav-list bs-docs-sidenav" id="idmenus" style="width:100%;">
		<li class="active"><a style="cursor: default;"><b>Menus</b></a></li>
		<!-- $('#idmenus').append('<li id="'+menuid+'"><a href="'+value.menus.menuUrl+'"><i class="'+value.menus.menuIcon+'"></i
		>'+value.menus.menuTitle+'</a></li>'); -->
		<c:if test="${not empty sessionScope.lists}">
							<c:forEach var="listValue" items="${sessionScope.lists}">
								<li><a href="getSystems.html?moduleName=${listValue.key}"
									style="padding: 5px;"><i class="icon-user"></i><i class="icon-chevron-right"></i>
									${listValue.value}</a></li>
							</c:forEach>
						</c:if>
	</ul>
	<input type="hidden" value=${sessionScope.role } id="role">
</div>


