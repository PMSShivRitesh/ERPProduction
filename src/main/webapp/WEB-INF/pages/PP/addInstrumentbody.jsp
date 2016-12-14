



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
						<div class="span9" align="left">Add Instrument</div>
						<div class="span3" align="right">
							<input type="button" class="btn-save" title="Add Instrument" id="btnsave" onclick="saveFormDate()" />
							
							
							<div class="btn" align="left" title="Instrument List" onclick="getInstrumentLst()" >
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
							<label class="control-label">Instrument Name</label>
							<div class="controls">
								<input type="text" class="form-control" id="instrumentName" name="instrumentName" class="search" />
							</div>
						</div>
					
						<div class="control-group">
							<label class="control-label">Accuracy</label>
							<div class="controls">
									<input type="text" class="form-control" id="instrumentAccuracy" name="instrumentAccuracy" class="search" />
							</div>
						</div>
					
						
						
						</div>
						
					<!-- 2 Column -->	
					
					<div class="firstquad">
						<div class="control-group">
							<label class="control-label">Range</label>
							<div class="controls">
							<input type="text" class="form-control" id="instrumentRange" name="instrumentRange" class="search" />
							</div>
						</div>

						</div>
						
						<!-- 3 Column -->
						
					<div class="firstquad">
						<div class="control-group">
							<label class="control-label">Qty</label>
							<div class="controls">
								<input type="text" class="form-control" id="instrumentQty" name="instrumentQty" class="search" />
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



function saveFormDate() {

    // get the form values
    var instrumentName = $('#instrumentName').val();
    var instrumentRange = $('#instrumentRange').val();
    var instrumentAccuracy = $('#instrumentAccuracy').val();
    var instrumentQty = $('#instrumentQty').val();
    
    var flag=true;
    
    if (instrumentName=="")
	{
		flag = false;
		alert("Enter Instrument name")
	}
		
	if (instrumentRange=="")
	{
		flag = false;
		alert("Enter Instrument Range")
	}

	if (instrumentAccuracy=="")
	{
		flag = false;
		alert("Enter Accuracy")
	}
	if (instrumentQty=="")
	{
		flag = false;
		alert("Enter Qty")
	}
	
	if(flag==true)
	{
  
    $.ajax({
    type: "POST",
    url: "saveInstrumentDatail.html",
    data: "instrumentName=" + instrumentName + "&instrumentRange=" + instrumentRange+ "&instrumentAccuracy=" + instrumentAccuracy+ "&instrumentQty=" + instrumentQty,
    success: function(response){
    // we have the response
    $('#idsuccess').show();
		    //$("#idsuccess").show();
		    $("#idsuccess").html("<button type='button' class='close' data-dismiss='alert' onclick='hide();'>&times;</button><i class='icon-thumbs-up'></i>"+
		    		response);
    $('#instrumentName').val('');
    $('#instrumentRange').val('');
    $('#instrumentAccuracy').val('');
    $('#instrumentQty').val('');
  
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


function getInstrumentLst()
{
	location.href="../ProductionErp/ppinstrumentlstRequest.html"
}
</script>
