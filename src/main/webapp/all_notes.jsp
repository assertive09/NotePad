<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid p-2 m-0">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">All Notes</h1>
		<div class="row">

			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();

				Query q = s.createQuery("from Note");
				List<Note> notes = q.list();
				for (Note n : notes) {
				%>
				<div class="card mt-3">
					<img class="card-img-top m-4 mx-auto " style="max-width:100px" src="img/notes.png" alt="Card image cap">
					<div class="card-body px-5">
						<h5 class="card-title"><%= n.getTitle() %></h5>
						<p class="card-text"><%= n.getContent() %> </p>
						<p class="text-primary"><b><%= n.getAddedDate() %></b></p>
						<div class="container text-center mt-2">
						<a href="DeleteServlet?note_id=<%= n.getId() %>" class="btn btn-danger">Delete</a>
						<a href="edit.jsp?note_id=<%= n.getId() %>" class="btn btn-primary">Update</a>
						</div>
					</div>
				</div>

				<%
				}
				%>
			</div>
		</div>
	</div>
</body>
</html>