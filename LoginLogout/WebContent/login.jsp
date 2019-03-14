<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="css/bootstrap.css">

<title>Login</title>
</head>

<body>

	<div class="container">
		<br>
		<h2>Συμπλήρωσε τα στοιχεία σου:</h2>

		<form action="LoginCheck" method="POST">
			<div class="form-group">
				<label>Username: </label> <input type="text" class="form-control"
					name="onoma" placeholder="Δώσε Username" />
			</div>
			<div class="form-group">
				<label>Password: </label> <input type="password"
					class="form-control" name="psw" placeholder="Δώσε Password" />
			</div>
			<div style="text-align: left">
				<input type="submit" class="btn btn-info" value="Login">
			</div>
		</form>
	</div>

</body>
</html>