<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update a Post</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
</head>
<style>
	.bg-img {
  background-image: url("brown.png");

  min-height: 980px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}
h1 {
	text-align: center;
	margin: 20px;
	padding: 20px;

}

body {
	text-align: center;
}
.container {
    max-width: 503px;
}
</style>
<body>
	<%
		if (request.getSession(false).getAttribute("loginStatus") == null)
			response.sendRedirect("http://localhost:8080/PostsCRUD/login.jsp");
	%>
	<body class="bg-img">
	<h1>Update Post Here</h1>

	<form action="ControllerServlet">

		<div class="container">
			<div class="form-group">
				<label for="id">ID</label> <input type="text" class="form-control"
					id="id" placeholder="Enter id " name="id">
			</div>
			<div class="form-group">
				<label for="title">Title</label> <input type="text"
					class="form-control" id="title" placeholder="Enter title"
					name="title">
			</div>
			<div class="form-group">
				<label for="body">Body</label> <input type="text"
					class="form-control" id="body" placeholder="Enter body" name="body">
			</div>

			<button type="submit" name="buttonName" value="update" class="btn btn-outline-secondary waves-effect">>Update
				post</button>
	</form>
	<br />
	<br />

	<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>