<script type="text/javascript">
$(document).ready( function(){
	$('#iderror_login').hide();
	$('#idsuccess_logout').hide();
	$('#status').hide();
	if($('#status').text()== "true")
		{
		$('#idsuccess_logout').show();
		}
	});
	
	function loginFunction() {
		var userid = document.getElementById("userid").value;
		var password = document.getElementById("password").value;
		
		$.ajax({
			url : "login.html",
			type : "POST",		
			data : 'username='+userid+'&password='+password,

			success : function(data) {
 						if(data=="false"){
 							$("#status").val("");
 							$('#idsuccess_logout').hide();
 							$('#iderror_login').show();
 						}else{
 							window.location.href="homepageerp.html";  
		    			}
		    		}
		});
	}
	
	function forgotPassword(){
		window.location.href="/WEB-INF/pages/login/forgotpassword.jsp"
	}
	
	$(function() {
        if (localStorage.chkbx && localStorage.chkbx != '') {
            $('#remember_me').attr('checked', 'checked');
            $('#userid').val(localStorage.usrname);
            $('#password').val(localStorage.pass);
        } else {
            $('#remember_me').removeAttr('checked');
            $('#username').val('');
            $('#password').val('');
        }

        $('#remember_me').click(function() {
            if ($('#remember_me').is(':checked')) {
                // save username and password
                localStorage.usrname = $('#userid').val();
                localStorage.pass = $('#password').val();
                localStorage.chkbx = $('#remember_me').val();
            } else {
                localStorage.usrname = '';
                localStorage.pass = '';
                localStorage.chkbx = '';
            }
        });
    });
</script>

<%
String status= request.getParameter("status");
%>
<div id="status"><%= status%></div>
<div class="alert alert-error" id="iderror_login">Invalid user
	name or password!</div>
<div class="alert alert-success" id="idsuccess_logout">Successfully
	signed out!</div>

<div class="form-signin">
	<img src="images/kklogo.jpg" width="330" >

	<p class="text-left" style="margin-bottom: 10px; margin-top: 15px;">Sign
		in </p>

	<input type="text" class="input-block-level" placeholder="User Name"
		id="userid" style="width: 100%;"> <input type="password" class="input-block-level"
		placeholder="Password" id="password" style="width: 100%;">

	<button class="btn btn-primary" style="width: 100%;"
		onclick="loginFunction();">Sign in</button>

	<div class="checkbox">
		<input type="checkbox" value="remember-me" class="checkbox"
			id="remember_me">Remember me
	</div>

	<a id="forgot_password" class="cursor" onclick="forgotPassword();">Forgot
		Password?</a>
</div>
