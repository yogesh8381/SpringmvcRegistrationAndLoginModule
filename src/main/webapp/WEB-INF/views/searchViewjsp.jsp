<%@ page import="java.util.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>


<!DOCTYPE HTML>

<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
body {
	background: #DCE35B; /* fallback for old browsers */
	background: -webkit-linear-gradient(to right, #45B649, #DCE35B);
	/* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to right, #45B649, #DCE35B);
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}
</style>
</head>
<body>
<div class="container">
	<table class="table table-dark table-hover">
		<tr>
			<td colspan=4 align="center" style="background-color: teal"><b>User
					Record</b></td>
		</tr>
		<tr>
								<th scope="col">User Id</th>
								<th scope="col">user firstName</th>
								
								<th scope="col">user mobileNo</th>
								<th scope="col">user Email</th>
								
							</tr>
							
		
		
	
									
								<tr>
									<th scope="row">${user.userId }</th>
									<td>${user.firstName }</td>
									
									<td>${user.phoneNumber }</td>
									<td>${user.userEmail }</td>

									
								</tr>
							
		
		
		</div>
			
			<tr>
		<a
				class="btn btn-success" href="${pageContext.request.contextPath }/admin">Back to User</a>
				</tr>

	</table>
</body>
</html>