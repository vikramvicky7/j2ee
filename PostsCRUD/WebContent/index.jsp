<%@ taglib prefix="tags" uri="WEB-INF/tags.tld"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post Book</title>
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
h1 {
	text-align: center;
	margin: 20px;
	padding: 20px;
	background-color: #81D8D0;
}

body {
	text-align: center;
	background-color: #E5F3E5;
}

button {
	width: 18%;
}
</style>
<body>

	<tags:check-login />

	<h1 class="display-4 text-center">Welcome to Post Book</h1>
<div class="container">
	<a href="add.jsp"><button type="button"
			class="btn btn-outline-success waves-effect">Add Post</button></a>
	<br>
	<br>
	<a href="update.jsp"><button type="button"
			class="btn btn-outline-secondary waves-effect">>Update post</button></a>
	<br>
	<br>
	<a href="delete.jsp"><button type="button"
			class="btn btn-outline-danger waves-effect">Delete post</button></a>
	<br>
	<br>
	<a href="view.jsp"><button type="button"
			class="btn btn-outline-primary waves-effect">View all posts</button></a>
	<br>
	<br>
	<a href="search.jsp"><button type="button"
			class="btn btn-outline-info waves-effect">Search post</button></a>
</body>
<br />
<br />

<jsp:include page="footer.jsp"></jsp:include>
</div>
</html>