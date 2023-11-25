<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Add Notes</title>
<%@include file="Alljscss.jsp"%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<div class="container">
		<%@include file="NavBar.jsp"%>
		<br>
	<h1>Please fill your note details</h1>
	<br>
	
		<!--  ADD FORM -->
		<form action="SaveNoteServlet" method="post">
			<div class="mb-3">
				<label for="title" class="form-label">Note Title
					</label> <input 
					name = "title"
					required
					 type="text" 
					class="form-control"
					id="title" 
					aria-describedby="emailHelp"
					placeholder="Enter here" >
				
			</div>
			<div class="mb-3">
				<label for="content" class="form-label">Note Content</label>
				<textarea 
				name = "content"
				required id="content" placeholder="Enter your content here" 
				class="form-control"
				style="height:300px"></textarea>
			</div>
			
			<button type="submit" class="btn btn-primary">ADD</button>
		</form>

	</div>


</body>
</html>