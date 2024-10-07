<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
<link rel="stylesheet" href="css/styles.css" />
</head>
<body>
    <div class="signupWindow">
		<div class="loginHeader">Sign Up</div>
		<div class="loginContent">
		    <div style="display:block;padding-top:20px">FirstName*</div>
			<input type="text" id="T1" /> 
			<div style="display:block;padding-top:20px">LastName*</div>
			<input type="text" id="T2" /> 
			<div style="display:block;padding-top:20px">Email Id*</div>
			<input type="email" id="T3" /> 
			<div style="display:block;padding-top:20px">Mobile No*</div>
			<input type="text" id="T4" /> 
			<div style="display:block;padding-top:20px">UserName*</div>
			<input type="text" id="T5" /> 
			<div style="display:block;padding-top:20px">Password*</div>
			<input type="password" id="T6" /> 
			<div style="display:block;padding-top:20px"></div>
			<button class="signinButton" onclick="submit()">Submit</button>
			<div style="display:block;height:80px;line-height:50px">
			</div>
				<label id="ack"></label>
		</div>
	</div>

	<script type="text/javascript">
		function submit() {
			// Redirect directly to index.jsp without any verification
			location.href = "index.jsp"; // Redirects user to index.jsp
		}
	</script>
</body>
</html>
