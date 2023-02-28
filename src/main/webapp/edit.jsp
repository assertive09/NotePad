<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container-fluid p-2 m-0">
		<%@include file="navbar.jsp"%>
		<h2>Edit:</h2>
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Note note = (Note) s.get(Note.class, noteId);
		s.close();
		%>

		<!-- this is add form -->
		<form action="UpdateServlet" method="post">
		
		<input value="<%= note.getId()%>" name="id" type="hidden">
			<div class="form-group">
				<label for="title">Note Title</label> <input required type="text"
					class="form-control" id="title" aria-describedby="emailHelp"
					placeholder="enter note title here" name="title" value="<%= note.getTitle()%>"/>
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea required id="content"
					placeholder="enter your content here" class="form-control"
					style="height: 300px" name="content"><%= note.getContent() %></textarea>
					
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Save</button>
			</div>
		</form>

	</div>
</body>
</html>