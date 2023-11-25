<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login Page</title>
<%@include file="Alljscss.jsp"%>
<style>
body {
	display: flex;
	align-items: center;
	justify-content: center;
	height: 100vh;
	margin: 0;
}

.containerForLogin {
	width: 600px;
	height: 400px;
	border: 1px solid #ddd; /* Add a border for visualization */
}

/* Center the form content */
form {
	display: flex;
	flex-direction: column;
	align-items: center;
}

/* Adjust the form control styles */
.form-control {
	margin-bottom: 15px;
}

.middletheforms {
	width: 400px;
	height: 200px;
}
/* Center the login button */
.btn {
	width: 30%;
}
</style>
</head>
<body>
	<div class="containerForLogin mid">
		<form action="LogServlet" method="post">
			<h1>LOGIN</h1>
			<br />
			<div class="middletheforms">
				<input required class="form-control" type="text" name="uname"
					placeholder="Enter username" /> <br /> <input
					class="form-control" required type="password" name="pass"
					placeholder="Enter password" /> <br /> <br />
				<button class="btn btn-primary btn-block " type="submit">Login</button>
				<br /> <br /> <a href="signup.jsp">Don't have an account? Then
					SIGN UP</a> <br />
			</div>
		</form>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
