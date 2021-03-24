<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>


* {
	box-sizing: border-box;
}

form.example input[type=text] {
	padding: 10px;
	font-size: 17px;
	border: 1px solid grey;
	float: left;
	width: 80%;
	background: #f1f1f1;
}

form.example button {
	float: left;
	width: 20%;
	padding: 10px;
	background: #2196F3;
	color: white;
	font-size: 17px;
	border: 1px solid grey;
	border-left: none;
	cursor: pointer;
}

form.example button:hover {
	background: #0b7dda;
}

form.example::after {
	content: "";
	clear: both;
	display: table;
}

@import url(https://fonts.googleapis.com/css?family=Oswald);

@import url(https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300);

@import url(https://fonts.googleapis.com/css?family=Pacifico);

body {
  background-color: #111111;
  color: #fff;
}

#container {
  margin: 0 auto;
  max-width: 520px;
  text-align: center;
}

#container h1 {
  font-weight: normal;
  text-transform: uppercase;
  margin: 0.3125em 0;
  background-color: #111111;
  position: relative;
  display: inline-block;
  padding: 0 10px;
}

.style-1 {
  font-family: "Pacifico", sans-serif;
  text-transform: none!important;
}

.style-2 {
  font-family: "Open Sans Condensed", sans-serif;

}

.style-3 {
  font-family: "Oswald", sans-serif;
}

.style-1:before {
  content: "";
  height: 3px;
  border-top: 1px solid white;
  border-bottom: 1px solid white;
  position: absolute;
  width: 300%;
  top: 50%;
  left: -100%;
  z-index: -999;
}

.style-2:before {
  content: "";
  height: 3px;
  border-top: 2px dotted white;
  border-bottom: 2px dotted white;
  position: absolute;
  width: 300%;
  top: 45%;
  left: -100%;
  z-index: -999;
}

.style-3:before {
  content: "";
  border-top: 1px solid white;
  position: absolute;
  width: 300%;
  top: 35%;
  left: -100%;
  z-index: -999;
}

.style-3:after {
  content: "";
  border-bottom: 1px solid white;
  position: absolute;
  width: 300%;
  bottom: 35%;
  left: -100%;
  z-index: -999;
}

form { 
margin: 0 auto; 
width:250px;
}
</style>
</head>
<body>

	<div id="container">
		<h1 class="style-1">Search</h1>
	</div>
	<div id="container">
		<h1 class="style-2">Enter</h1>
	</div>
	<div id="container">
		<h1 class="style-3">First Name</h1>
	</div>
	<!-- partial -->
	


	<form method="post" name="fr" action="search">
		<input type="text" name="firstName" id="findname">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-primary" type="submit" name="submit" value="Search">Search</button><br>
		<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="list" class="btn btn-warning">BACK TO USERLIST</a><br>
	</form>




</body>
</html>
