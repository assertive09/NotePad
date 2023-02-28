<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<%@include file="all_js_css.jsp"%>
<title>Add Notes</title>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h2>Please fill note details</h2>
		<br>

		<!-- this is add form -->
		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Note Title</label> <input required type="text"
					class="form-control" id="title" aria-describedby="emailHelp"
					placeholder="enter note title here"  name="title"/>
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea required id="content" placeholder="enter your content here"
					class="form-control" style="height: 300px" name="content" ></textarea>
			</div>
			<div class="container text-center"  >
				<button type="submit" class="btn btn-primary">Add</button>
			</div>
		</form>
	</div>

</body>
</html>