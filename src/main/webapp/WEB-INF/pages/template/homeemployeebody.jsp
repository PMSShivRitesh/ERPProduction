<style>
#menulist ul li:hover {
    height: 22px !important;
    width: 32% !important;
    padding: 8px !important;
    border: solid 1px #ddd !important;
    /* background-color: #ffebd6 !important; */
     background-color: #dfeffc !important; 
    font-size: 13px !important;
   
}

</style>
<fieldset class="fieldset-style">
		<div class="form-horizontal">
	<div class="clearfix">
		
		
		
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding" id="idrolelist-header">
					<div class="row-fluid">
						<div class="span11" align="left">Available Systems</div>
						<!-- <div class="span1" align="right">
						<button class="btn-save" type="submit" title="Save" id="idsave"></button>
						</div> -->
					</div>
				</div>
			</div>
			<div class="panel-body" id="idrolelist-body">
			<div class="container-fluid form-horizontal">
				<div class="row-fluid search-align">
				<div id="menulist">
				<ul id="idmenuslist">
				
					<c:if test="${not empty systemlists}">
             		           	<c:forEach var="systemlistValue" items="${systemlists}">
         							<%-- <li><a href="${systemlistValue.key}Request.html" style="padding:5px;">
         							${systemlistValue.value}</a></li> --%>
         							<a href="${systemlistValue.key}.html">
         							<li class="class_menuli" style="height:20px;width: 30% !important;">
         							<i class="icon-pencil"></i><b>
         							${systemlistValue.value}
         							</b><br><font color="#0088cc"></font></li></a>
								</c:forEach>
						</c:if>
						</ul>
				
				</ul>
			</div>
			</div>
			</div>
		</div>
	</div>
		
		
		</div>
		</div>
		</fieldset>
		
			
                      