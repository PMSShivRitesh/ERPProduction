



<fieldset class="fieldset-style">

<div class="alert alert-success" id="idsuccess">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<i class="icon-thumbs-up"></i>${msg}
		</div>
		<script type="text/javascript">
		$("#idsuccess").hide();
		</script>

<form role="form" name="fname"  id="fname" action="addrmitemstock.html" method="post" >
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Add Raw Material Stock</div>
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
								<input type="text" class="form-control" id="itemcode" name="itemcode" 
							 required="required"/>
							</div>
						</div>
						
						
						<div class="control-group">
							<label class="control-label">Location</label>
							<div class="controls">
								<input type="text" class="form-control" id="rmitemloc" name="rmitemloc" 
								class="search"  required="required"/>
							</div>
						</div>
					
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
					
					<div class="control-group">
							<label class="control-label">RM Item Code</label>
						<div class="controls">
								<input type="text" class="form-control" id="rmitemcode" name="rmitemcode"/>
							</div>
						</div>
						
						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
						
					
						<div class="control-group">
							<label class="control-label">Qty</label>
						<div class="controls">
								<input type="text" class="form-control" id="rmstockQty" name="rmstockQty" 
								class="search"  required="required"/>
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

    
function  gethomepage()
{
	  location.href="getSystems.html?moduleName=pp";
}



function getstocklst()
{
	location.href="../ProductionErp/itemstockdetailRequest.html"
}

</script>
