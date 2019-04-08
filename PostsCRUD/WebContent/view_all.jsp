<%@page import="model.Posts"%>
<%@page import="java.util.List"%>
<%@page import="dao.PostsDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View Post</title>

<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}
table {
	border-collapse: collapse;
	width: 30%;
}
h1 {
	text-align: center;
	margin: 20px;
	padding: 20px;
	background-color: #40E0D0;
}

body {
	text-align: center;
	background-color: #E5F3E5;
}
th, td {
	text-align: center;
	padding: 8px;
}
tr:nth-child(even) {
	background-color:#FFF8DC;
}
.container {
   content-align:center;
}
</style>

</head>
<body>
<h1>Posts</h1>

<%
	if(request.getSession(false).getAttribute("loginStatus") == null)
		response.sendRedirect("http://localhost:8080/PostsCRUD/login.jsp");
%>
	<%
		PostsDAOImpl impl = new PostsDAOImpl();
		List<Posts> list = impl.view();
	%>
	
<input type="hidden" name="o" value="12">
<div class="container" >
	<table>
		<tr>
			<th>ID</th>
			<th>TITLE</th>
			<th>BODY</th>
			
		</tr>

		<% 
			for (Posts post : list) {
		%>
		<tr>
			<td><%=post.getId()%></td>
			<td><%=post.getTitle()%></td>
			<td><%=post.getBody()%></td>
			<td><a href="http://localhost:8080/PostsCRUD/ControllerServlet?id=<%= post.getId() %>&buttonName=delete&origin=view">x</a></td>
		</tr>
		<%
			}
		%>
	</table>
		</div>
		<br /><br />

<jsp:include page="footer.jsp"></jsp:include>



</body>
</html>