<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
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
	<style>
	.bg-img {
  background-image: url("brown.png");

  min-height: 900px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}
.container {
    max-width: 503px;
}
	</style>
</head>
<body>
<body class="bg-img">
	<h1>Login Page</h1>

	<form action="ControllerServlet">

		<div class="container">

			<p class="display-3 text-center">Login Form</p>
		</div>

		<div class="container">
			<div class="form-group">
				<label for="username">username</label> <input type="text"
					class="form-control" id="email" placeholder="Enter username"
					name="username">
			</div>
			<div class="form-group">
				<label for="password">Password:</label> <input type="password"
					class="form-control" id="pwd" placeholder="Enter password"
					name="password">
			</div>

			<button type="submit" value="sign in"
				class="elementToAnimate btn btn-success" name="buttonName">Sign
				In</button>
			<button type="submit" value="sign up"
				class="elementToAnimate btn btn-primary" name="buttonName">Sign
				Up</button>

			<button type="reset" class="btn btn-danger" name="buttonName">Reset</button>


		</div>

	</form>

</body>
</html>