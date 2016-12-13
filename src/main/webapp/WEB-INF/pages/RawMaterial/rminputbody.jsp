

<fieldset class="fieldset-style">
<form role="form" action="RMGradeSave.html">
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span10" align="left">Add RM Detail </div>
						<div class="span2" align="right">
							<input type="submit" class="btn-save" value="" id="btnsave" />
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
							<label class="control-label">Basic RM Grade</label>
							<div class="controls">
								<select class="form-control" name="brmgname" id="brmgname">
										<option>--Select--</option>
											<c:if test="${not empty brmgradelst}">
             		           					<c:forEach var="listValue" items="${brmgradelst}">
             		           						<option value="${listValue}">${listValue}</option>
												</c:forEach>
											</c:if>
										</select>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Select Shape</label>
							<div class="controls">
								<select class="form-control" name="rmShapeName" id="rmShapeName" onchange="showParameters()">
											<option>--Select--</option>
												<option value="Round">Round</option>
												<option value="Rectangel">Rectangel</option>
						
								</select>
							</div>
						</div>
						<div class="control-group" id="minwidth">
							<label class="control-label">Min-Width</label>
							<div class="controls">
								<input type="text" id="dim3" name="dim3"   class="form-control" placeholder="" onblur="calculateRMWeight()"/>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Enter Rate</label>
							<div class="controls">
									<input type="text" class="form-control" name="supplierRate" placeholder="" />
							</div>
						</div>
						
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						<div class="control-group">
							<label class="control-label">RM Sub Grade</label>
							<div class="controls">
								<input type="text" class="form-control" name="rmGrade" placeholder="" />
							</div>
						</div>

						<div class="control-group" id="mindia">
							<label class="control-label"><span id="change1">Min-Dia</span></label>
							<div class="controls">
									<input type="text" id="dim1" name="dim1"  class="form-control" placeholder=""  />
							</div>
						</div>
						
						<div class="control-group" id="maxwidth">
							<label class="control-label">Max-Width</label>
							<div class="controls">
								<input type="text" id="dim4" name="dim4"   class="form-control" placeholder="" onblur="calculateRMWeight()"/>
							</div>
						</div>

						
						</div>
						
						
						
						<!-- 3 Column -->
						
					<div class="firstquad">
						<div class="control-group">
							<label class="control-label">Density</label>
							<div class="controls">
								<input type="text" class="form-control" name="Spw" id="spw" placeholder="" />
							</div>
						</div>
						
						<div class="control-group" id="maxdia">
							<label class="control-label"><span id="change2">Max-Dia</span></label>
							<div class="controls">
								<input type="text" id="dim2" name="dim2"   class="form-control" placeholder="" onblur="checkCondition()"/>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Select Supplier</label>
							<div class="controls">
								<select class="form-control" name="supplierName" id="supplierName" onchange="getDistrictLst()">
											<option>--Select--</option>
											<c:if test="${not empty supplierNameList}">
             		           					<c:forEach var="listValue" items="${supplierNameList}">
             		           						<option value="${listValue}">${listValue}</option>
												</c:forEach>
											</c:if>
										</select>
							</div>
						</div>
				
						
											
					</div>
				</div>
			</div>
		</div>
		
	 </form> 
	</fieldset>
	
	
	<script type="text/javascript">
	
	$(document).ready(function(){
		$('#brmgname').change(function(event){
			var name=document.getElementById("brmgname");
			var brmgname =name.options[name.selectedIndex].value;
			
	  		$.getJSON('getRmDensity.html',{brmgname:brmgname}).done(function(json ) {
	  			
	  			if(json[0].density=="0")
	  				{
	  				 $('#spw').attr('readonly', false);
	  				 $('#spw').val('');
	  				}
	  			else
	  				{
	  					document.getElementById("spw").value=json[0].density;
	  				    $('#spw').attr('readonly', true);
	  				     $('#spw').addClass('input-disabled');
	  				}
	  		
	  			
	  		
	  	  })
	.fail(function( jqxhr, textStatus, error ) {
	alert("fail");
	});
	});
	});
	
	
function showParameters()
     {
    	 var shapeName= $("#rmShapeName").val();
    	
    	 if(shapeName=="Round")
 		{
 				$("#minwidth").hide();
 			
 				$("#maxwidth").hide();
 				
    			 $("#mindia").show();
    			 $('#change1').html("Min-Dia");
    			 $('#change2').html("Max- Dia");
    			 
    			 $("#maxdia").show();
    			 
    			
 			
 		}
     	
    	if(shapeName=="Rectangel")
    		{
    			$("#minwidth").show();
       			 $("#maxwidth").show();
       			$("#mindia").show();
      			 $("#maxdia").show();
       			$('#change1').html("Min-Thick");
       			$('#change2').html("Max-Thick");
       			
       			
    		}
    
     }
     
     
  function getDensity()
  {
	  
  }
     
function  gethomepage()
{
	  location.href="getSystems.html?moduleName=RawMaterial";
}
</script>


