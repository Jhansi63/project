<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Sign In</title>
	<link rel="stylesheet" href="css/styles.css" />
	<style>
		/* Basic styling for the navbar */
		.navbar {
			width: 100%;
			background-color: #333;
			overflow: hidden;
		}

		.navbar a {
			float: right;
			display: block;
			color: white;
			text-align: center;
			padding: 14px 20px;
			text-decoration: none;
		}

		.navbar a:hover {
			background-color: #ddd;
			color: black;
		}

		.navbar .title {
			float: left;
			padding: 14px 20px;
			color: white;
			font-size: 20px;
			text-transform: uppercase;
		}
	</style>
</head>
<body>
	<!-- Navbar Section -->
	<div class="navbar">
		<div class="title">WeCare</div>
		<a href="/doctor">Doctor</a>
		<a href="/patient">Patient</a>
		<a href="/admin">Admin</a>
	</div>
	
	<!-- Sign In Section -->
	<div class="loginWindow">
		<div class="loginHeader">Sign In</div>
		<div class="loginContent">
			<div style="display:block;padding-top:20px">UserName*</div>
			<input type="text" id="T1" /> 
			<div style="display:block;padding-top:20px">Password*</div>
			<input type="password" id="T2" /> 
			<div style="display:block;padding-top:10px;padding-bottom:10px;text-align:right">
				Forgot <label style="color:blue;cursor:pointer;">Password</label>
			</div>
			<button class="signinButton" onclick="signIn()">Sign In</button>
			<div style="display:block;height:80px;line-height:50px">
			</div>
				<label id="ack"></label>
			<div style="display:block;text-align:center">Don't have an account?</div>
			<label class="signuplabel" onclick="signUp()">SIGN UP NOW</label>
		</div>
	</div>

	<!-- JavaScript Section -->
	<script type="text/javascript" src="js/main.js"></script>
	<script type="text/javascript">
		function signIn(){
			var data=JSON.stringify({
				username:  T1.value,
				password:  T2.value
			});
			var url="http://localhost:8080/user/login";
			callApi("POST", url, data, getResponse);
		}
		function getResponse(res){
			if(res == 401){
				ack.style.color="red";
				ack.innerHTML = "Invalid Credentials!";
			}
			else{
				ack.innerHTML = "";
				location.href = "/home"; // or use location.replace="/home";
			}
		}
		function signUp(){
			location.href="/signup";
		}
	</script>
</body>
</html>
