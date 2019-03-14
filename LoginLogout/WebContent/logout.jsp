<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=yes">

<link rel="stylesheet" href="css/bootstrap.css">
<title>Logout</title>

</head>
<body>
	<%
		if (session.getAttribute("user") == null || session.getAttribute("ucode") == null) {
			response.sendRedirect("login.jsp");
		}
	%>
	
	<nav class="navbar navbar-expand-sm bg-light">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="navbar-brand"> Username:
					${user}</a></li>
			<li class="nav-item">
				<form action="login.jsp">

					<button class="btn btn-outline-success " type="submit">Logout</button>
				</form>
			</li>

		</ul>
	</nav>
<%session.invalidate(); %>



</body>
</html>