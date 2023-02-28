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
	<div class="container">
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
					<img class="card-img-top m-4 " style="max-width:100px" src="img/notes.png" alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%= n.getTitle() %></h5>
						<p class="card-text"><%= n.getContent() %> </p>
						<a href="#" class="btn btn-danger">Delete</a>
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