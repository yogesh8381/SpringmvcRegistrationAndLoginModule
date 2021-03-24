<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>Forgot Password</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        body{
    background:#f3c538;
}
.forget-pwd > a{
    color: #dc3545;
    font-weight: 500;
}
.forget-password .panel-default{
    padding: 31%;
    margin-top: -27%;
}
.forget-password .panel-body{
    padding: 15%;
    margin-bottom: -50%;
    background: #fff;
    border-radius: 5px;
    -webkit-box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
img{
    width:40%;
    margin-bottom:10%;
}
.btnForget{
    background: #c0392b;
    border:none;
}

.btnLogin{
    background: #982bc0;
    border:none;
}


.forget-password .dropdown{
    width: 100%;
    border: 1px solid #ced4da;
    border-radius: .25rem;
}
.forget-password .dropdown button{
    width: 100%;
}
.forget-password .dropdown ul{
    width: 100%;
}
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container forget-password">
            <div class="row">
                <div class="col-md-12 col-md-offset-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="text-center">
                                <img src="https://i.ibb.co/rshckyB/car-key.png" alt="car-key" border="0">
                                <h2 class="text-center">Forgot Password?</h2>
                                <p>You can retrieve your password here.</p>
                                <form id="register-form" role="form" autocomplete="off" class="form" action="<%=request.getContextPath()%>/forgotPassword" method="POST">
                                  <div class="form-group">
								<input type="text"
									class="form-control" id="name" aria-describeby="emailHelp"
									name="userEmail" placeholder="Enter emailid"
									>
							</div>
                                   
                                      <div class="form-group">
								<input type="text"
									class="form-control" id="name" aria-describeby="emailHelp"
									name="newPassword" placeholder="Enter new password"
									>
							</div>
                                    <div class="form-group">
                                        <input name="btnForget" class="btn btn-lg btn-primary btn-block btnForget" value="Reset Password" type="submit">
                                        <input name="btnLogin" class="btn btn-lg btn-secondary btn-block btnForget" value="Login" type="button" onclick="location.href='index.jsp';">
                                        
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<script type="text/javascript">

</script>
</body>
</html>
