<fieldset class="fieldset-style">
<div class="alert alert-success" id="idsuccess">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<i class="icon-thumbs-up"></i>${msg}
		</div>
		<script type="text/javascript">
		$("#idsuccess").hide();
		</script>
<form role="form" action="saveBasicRMGrade.html">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Add Basic RM</div>
						<div class="span2" align="right">
							<input type="submit" class="btn-save" value="" id="btnsave" onclick="show()"/>
							<div class="btn" title="Cancel" onclick="gethomepage();" id="btnclear">
								<i class="icon-home"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="container-fluid panel-body">
				<div class="row-fluid search-align">
					<div class="firstquad">
						<div class="control-group">
							<label class="control-label">Basic RM</label>
							<div class="controls">
								<input type="text" name="brmgname" class="form-control" placeholder="" required="required" />
							</div>
						</div>
						
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						
						
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
								
											
					</div>
				</div>
			</div>
		</div>
		</div>
	 </form> 
	 
	
	 
	</fieldset>
	
	<script>
	
	function  gethomepage()
	{
		  location.href="getSystems.html?moduleName=RawMaterial";
	}
	function show()
	{
		$("#idsuccess").show();
	}
	</script>
