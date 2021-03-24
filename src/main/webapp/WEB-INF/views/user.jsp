<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
<title>Update Form</title>


<style>
body {
	background: #005AA7; /* fallback for old browsers */
	background: -webkit-linear-gradient(to right, #FFFDE4, #005AA7);
	/* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to right, #FFFDE4, #005AA7);
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}

.topnav {
	overflow: hidden;
	background-color: #1d8ba1;
}

.topnav a {
	float: left;
	color: #f2f2f2;
	text-align: center;
	padding: 20px 16px;
	text-decoration: none;
	font-size: 17px;
}

.topnav a.logout {
	float: right;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.topnav a:hover {
	background-color: #ddd;
	color: black;
}

.topnav a.active {
	background-color: #4CAF50;
	color: white;
}
</style>

</head>
<body>
	<div class="container mt-3">


		<div class="row">

			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3">Update user Details</h1>
<div class="card">
					<div class="card-body">
					<form action="${pageContext.request.contextPath }//normalUser"
							method="post">
					<input type="hidden" value="${user.userId }" name="userId" />
						<div class="form-group">
								<label for="name">User firstName</label><input type="text"
									class="form-control" id="name" aria-describeby="emailHelp"
									name="firstName" placeholder="Enter first name"
									value="${user.firstName } " required="required">
							</div>

							<div class="form-group">
								<label for="name">User LastName</label><input type="text"
									class="form-control" id="name" aria-describeby="emailHelp"
									name="lastName" placeholder="Enter last name"
									value="${user.lastName }" required="required">
							</div>

							<div class="form-group">
								<label for="name">User PhoneNumber</label><input type="text"
									class="form-control" id="name" aria-describeby="emailHelp"
									name="phoneNumber" placeholder="Enter mobile no"
									value="${user.phoneNumber }" required="required" readonly>
							</div>

							<div class="form-group">
								<label for="name">User Email</label><input type="text"
									class="form-control" id="name" aria-describeby="emailHelp"
									name="userEmail" placeholder="Enter emailid"
									value="${user.userEmail }" required="required" readonly>
							</div>



							<div class="form-group">
								<label for="name">DOB</label><input type="text"
									class="form-control" id="name" aria-describeby="emailHelp"
									name="userBirthday" placeholder="Enter DoB"
									value="${user.userBirthday }" required="required">
							</div>

							<div class="form-group">
								<label for="name">gender</label><input type="text"
									class="form-control" id="name" aria-describeby="emailHelp"
									name="gender" placeholder="Enter gender"
									value="${user.gender }" required="required">
							</div>


							<div class="form-group">
								<label for="name">userRole</label><input type="text"
									class="form-control" id="name" aria-describeby="emailHelp"
									name="userRole" placeholder="Enter gender"
									value="${user.userRole }" required="required" readonly>
							</div>

							<div class="form-group">
								<label for="name">streetAdress</label><input type="text"
									class="form-control" id="name" aria-describeby="emailHelp"
									name="streetAddress" placeholder="Enter streetaddress"
									value="${user.streetAddress }" required="required">
							</div>



							<div class="form-group">
								<label for="name">streetAdress2</label><input type="text"
									class="form-control" id="name" aria-describeby="emailHelp"
									name="streetAddress2" placeholder="Enter streetaddress"
									value="${user.streetAddress2 }" required="required">
							</div>
							<div class="form-group">
								<label for="name">User City</label><input type="text"
									class="form-control" id="name" aria-describeby="emailHelp"
									name="userCity" placeholder="Enter city"
									value="${user.userCity }" required="required">
							</div>
							<div class="form-group">
								<label for="name">State</label><input type="text"
									class="form-control" id="name" aria-describeby="emailHelp"
									name="state" placeholder="Enter state" value="${user.state }">
							</div>


							<div class="form-group">
								<label for="name">Postal / Zip Code</label><input type="text"
									class="form-control" id="name" aria-describeby="emailHelp"
									name="userPostal" placeholder="Enter pin"
									value="${user.userPostal }">
							</div>

							<div class="form-group">
								<label for="name">Country</label><input type="text"
									class="form-control" id="name" aria-describeby="emailHelp"
									name="userCountry" placeholder="Enter user country"
									value="${user.userCountry }">
							</div>


							<div class="form-group">
								<label for="name">userSchoolName</label><input type="text"
									class="form-control" id="name" aria-describeby="emailHelp"
									name="userSchoolName" placeholder="Enter userSchoolName"
									value="${user.userSchoolName }">
							</div>


							<div class="form-group">
								<label for="name">userSchoolName</label><input type="text"
									class="form-control" id="name" aria-describeby="emailHelp"
									name="userSchoolName" placeholder="Enter userSchoolName"
									value="${user.userSchoolName }">
							</div>

							<div class="form-group">
								<label for="name">userSchoolPassout</label><input type="text"
									class="form-control" id="name" aria-describeby="emailHelp"
									name="userSchoolPassout" placeholder="Enter userSchoolName"
									value="${user.userSchoolPassout }">
							</div>

							<div class="form-group">
								<label for="name">userCollegeName</label><input type="text"
									class="form-control" id="name" aria-describeby="emailHelp"
									name="userCollegeName" placeholder="Enter userCollegeName"
									value="${user.userCollegeName }">
							</div>

							<div class="form-group">
								<label for="name">Year of passout</label><input type="text"
									class="form-control" id="name" aria-describeby="emailHelp"
									name="userCollegePassout"
									placeholder="Enter userCollegePassout"
									value="${user.userCollegePassout }">
							</div>
							<div class="form-group">
								<label for="name">Select Degree</label><input type="text"
									class="form-control" id="name" aria-describeby="emailHelp"
									name="userDegree" placeholder="Enter userDegree "
									value="${user.userDegree }">
							</div>

							<div class="form-group">
								<label for="name">Year of passout</label><input type="text"
									class="form-control" id="name" aria-describeby="emailHelp"
									name="userDegreePassout" placeholder="Enter userDegreePassout "
									value="${user.userDegreePassout }">
							</div>


							<div class="form-group">
								<label for="name">Qualification</label><input type="text"
									class="form-control" id="name" aria-describeby="emailHelp"
									name="userQualification" placeholder="Enter userQualification"
									value="${user.userQualification }">
							</div>
					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-warning">Save</button>
					</div>
					</div>
					</div>

				</form>
			</div>

		</div>
	</div>
</body>
</html>