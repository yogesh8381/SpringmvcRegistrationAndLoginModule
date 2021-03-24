<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<%@page import="register.model.Message"%>

<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
	<title>Login Page</title>
   <!--Made with love by Mutiullah Samim -->
   
	<!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	<!--Custom styles-->
	<link href="<c:url value="/resources/css/login.css" />" rel="stylesheet">

</head>
<body>
<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3>Sign In</h3>
				<div class="d-flex justify-content-end social_icon">
					<span><i class="fab fa-facebook-square"></i></span>
					<span><i class="fab fa-google-plus-square"></i></span>
					<span><i class="fab fa-twitter-square"></i></span>
				</div>
			</div>
				<%
							Message m = (Message) session.getAttribute("Message");
						if (m != null) {
						%>
						<div class="alert <%=m.getCssClass()%>" role="alert">
							<%=m.getContent()%>
						</div>


						<%
							session.removeAttribute("Message");
						}
						%>
				<div id="ForgotPassword">
						<%
				
				%>
			
			<div class="d-flex justify-content-right">
					<a href="passwordchange">Forgot password?</a>
				</div>
			<div class="card-body">
		
				
				<form action="validate" method="post"  >
				<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input name="userEmail"  type="text" class="form-control" placeholder="enter email">
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input  name="userPassword" type="password" class="form-control" placeholder="password">
					</div>
					
					
							
						
				
					<div class="form-group">
						<input type="submit" value="Login" class="btn float-center login_btn">
					</div>
					
					
					<div class="d-flex justify-content-right links">
					Don't have an account?<a href="register">Sign Up</a>
				
				
			</div>
				</form>
			</div>
			
				
		</div>
	</div>
</div>
</body>
</html>
