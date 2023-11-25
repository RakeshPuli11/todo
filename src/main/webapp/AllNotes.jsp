<%@page import="com.Entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.Helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes</title>
<%@include file="Alljscss.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="NavBar.jsp"%>
		<br>
		<h1>All Notes</h1>
		<br>
		<div class="row">
			<div class="col">
				<%
				Session s = FactoryProvider.getFactory().openSession();

				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list) {
				%>
				<div class="card" style="width: 18rem;">
					<div class="card-body">
						<h5 class="card-title"><%=note.getTitle() %></h5>
						<p class="card-text"><%=note.getContent() %></p>
						<p><b><%=note.getDate()%></b></p>
						<a href="DeleteServlet?note_id=<%=note.getId()%>" class="btn btn-danger">delete</a>
						<a href="Edit.jsp?note_id=<%=note.getId()%>" class="btn btn-primary">update</a>
						
					</div>
				</div>
				<br>
				<%
				}
				s.close();
				%>
			</div>
		</div>
		<h1><a href ="Home.jsp"></a></h1>
	</div>
</body>
</html>