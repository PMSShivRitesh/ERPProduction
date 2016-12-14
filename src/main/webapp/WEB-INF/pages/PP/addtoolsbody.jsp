
<fieldset class="fieldset-style">

<div class="alert alert-success" id="idsuccess">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<i class="icon-thumbs-up"></i>${msg}
		</div>
		<script type="text/javascript">
		$("#idsuccess").hide();
		</script>

<form role="form" name="fname"  id="fname" >
<div class="form-horizontal">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container-fluid header-padding">
					<div class="row-fluid">
						<div class="span9" align="left">Add Tools</div>
						<div class="span3" align="right">
							<input type="button" class="btn-save" value="" id="btnsave" onclick="saveFormDate()" />
							
							<div class="btn" align="left" title="Instrument List" onclick="getToolLst()" >
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
							<label class="control-label">Tool Name</label>
							<div class="controls">
								<input type="text" class="form-control" id="toolName" name="toolName" class="search" />
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



function saveFormDate() {

    // get the form values
    var toolName = $('#toolName').val();
 
    var flag=true;
    
    if (toolName=="")
	{
		flag = false;
		alert("Enter Tool name")
	}
	
	
	if(flag==true)
	{
  
    $.ajax({
    type: "POST",
    url: "saveToos.html",
    data: "toolName=" + toolName,
    success: function(response){
    // we have the response
    	  $('#idsuccess').show();
		    //$("#idsuccess").show();
		    $("#idsuccess").html("<button type='button' class='close' data-dismiss='alert' onclick='hide();'>&times;</button><i class='icon-thumbs-up'></i>"+
		    		response);
		    $('#processRate').val('');
  
  
    },
    error: function(e){
    alert('Error: ' + e);
    }
    });
	}
    }
    
    

function  gethomepage()
{
	  location.href="getSystems.html?moduleName=pp";
}


function getToolLst()
{
	location.href="../ProductionErp/ppgettoollstRequest.html"
}

</script>
