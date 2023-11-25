<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sign Up Page</title>
<!-- Bootstrap CSS (Bootstrap 5) -->
<%@include file="Alljscss.jsp"%>
<style>
body {
	display: flex;
	align-items: center;
	justify-content: center;
	height: 100vh;
	margin: 0;
}

.containerForSignup {
	width: 600px;
	height: 400px;
	border: 1px solid #ddd; /* Add a border for visualization */
}

form {
	display: flex;
	flex-direction: column;
	align-items: center;
}
.middletheforms {
	width: 400px;
	height: 200px;
}

/* Adjust the form control styles */
.form-control {
	margin-bottom: 15px;
}

/* Center the submit button */
.submit {
	width: 30%;
}
</style>
</head>
<body>
	<div class="containerForSignup mid">
		<form id="signupForm" action="SignUpServlet" method="post">
			<h1>Sign up</h1>
			<br />
			<div class="middletheforms">
				<input required class="form-control" type="text" name="uname"
					placeholder="Enter username" required /> <br /> <input required
					class="form-control" type="password" name="pass1"
					placeholder="Enter password" required /> <br /> <input required
					class="form-control" type="password" name="pass2"
					placeholder="Re-enter password" required />
			</div>
			<br />
			<button class="btn btn-primary btn-block submit" type="submit">Submit</button>
		</form>
	</div>
	<!-- Bootstrap JS (Bootstrap 5) -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
