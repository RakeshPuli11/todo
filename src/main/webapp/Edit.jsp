<%@page import="com.Entities.Note"%>
<%@page import="com.Helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.Helper.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Edit Note</title>
    <%@include file = "Alljscss.jsp" %>
</head>
<body>
	<div class = "container" >
		<%@include file = "NavBar.jsp" %>
		<%
			int noteid = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Note note = (Note)s.get(Note.class,noteid);
		
		%>
		<form action="UpdateServlet" method="get">
		<input value = "<%=note.getId() %>"  name="noteId" type="hidden"/>
			<div class="mb-3">
				<label for="title" class="form-label">Note Title
					</label> <input 
					name = "title"
					required
					 type="text" 
					class="form-control"
					id="title" 
					aria-describedby="emailHelp"
					placeholder="Enter here" 
					value=<%=note.getTitle()%>
					/>
				
			</div>
			<div class="mb-3">
				<label for="content" class="form-label">Note Content</label>
				<textarea 
				name = "content"
				required id="content" placeholder="Enter your content here" 
				class="form-control"
				style="height:300px"
				><%=note.getContent()%></textarea>
			</div>
			
			<button type="submit" class="btn btn-success">Save Note</button>
		</form>
		
	</div>

</body>
</html>