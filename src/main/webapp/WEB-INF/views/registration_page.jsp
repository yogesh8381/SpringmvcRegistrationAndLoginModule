<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - Multi Step Form with Progress Bar using jQuery and CSS3</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<!--Custom styles-->
	<link href="<c:url value="/resources/css/register.css" />" rel="stylesheet">

	
	
<style>
.button {
  background-color: #4CAF50;
  border-radius: 1px;
  color: white;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 15px;
  width: 100px;
  padding: 10px 5px;
  margin: 10px 5px;
  cursor: pointer;
}
</style>
</head>
<body>
<!-- partial:index.partial.html -->
<!-- multistep form -->
<form action="register_process" method="post"  id="msform">
  <!-- progressbar -->
  <ul id="progressbar">
    <li class="active">Account Setup</li>
	<li>Personal Details</li>
    <li>Residency Details</li>
    <li>Educational Details</li>
  </ul>
  <!-- fieldsets -->
  <fieldset>
  <legend>Create your account</legend>
  <br><br>
  <table class="gfg" cellpadding="2" width="100%" bgcolor="#D6ED17FF" align="center" cellspacing="2">
	
	<tr>
   <td>User ID</td>
	<td><input type="text" name="userId" placeholder="userId" id="userid" />
        <span id="span3"><b>This field can't be Empty</b></span></td>
	</tr>
	
	<tr>
    <td><label>Email</label>
        
        </td>
	<td><input type="text" name="userEmail" placeholder="Email" id="email" />
        <span id="span1"><b>Enter a Valid Email Address</b></span>
        <span id="span2"><b>This field can't be Empty</b></span>
        <span class="red-text accent-4" id="result"></span> 
        </td>
	</tr>
      

	
	<tr>
    <td>Password</td>
	<td><input type="password" name="userPassword" placeholder="Password" id="password" />
        <span id="span3"><b>This field can't be Empty</b></span></td>
	</tr>
	
	<tr>
    <td>Confirm Password</td>
	<td><input type="password" name="cpassword" placeholder="Confirm Password"  id="cpassword"/>
        <span id="span4"><b>Password doesn't match</b> </span>
	</tr>
	
	<tr>
					<td><label for="role">Role:</label></td>
					    <td><select name="userRole" id="inpbox">
						<option value="" selected disabled hidden>Select
							User/Admin</option>
						<option value="Admin"><p style="font-family: courier;">Admin</p>
						</option>
						<option value="User"><p style="font-family: courier;">User</p>
						</option>
                        
					</select></td>
				</tr>
	
	</table>
  <input type="button" name="next" class="next action-button" value="Next" />
 <a href="${pageContext.request.contextPath }/"
							class="next action-button">Login Page</a> 
 </fieldset>
  <fieldset>
    <legend>Personal Details</legend>
	<br><br>
	
	<table class="gfg" cellpadding="2" width="100%" bgcolor="dec02c" align="center" cellspacing="2">
	
	<tr>
    <td><label>First Name</label></td>
    <td><input type="text" name="firstName" placeholder="First Name" id="fname"/>
        <span id="span15"><b>This field can't be Empty</b></span></td>
	</tr>
	
	<tr>
    <td><label>Last Name</label></td>
    <td><input type="text" name="lastName" placeholder="Last Name" id="lname"/>
        <span id="span16"><b>This field can't be Empty</b></span></td>
	</tr>
    
	<tr>
    <td><label>Birthday:</label></td>
    <td><input type="text" id="inpbox" name="userBirthday" placeholder="dd/mm/yyyy"></td>
	</tr>
	
	<tr>
    <td><p>What is your gender?</p></td>
	<td>Male<input type="radio" name="gender" value="male">
	Female<input type="radio" name="gender" value="female"> </td>
	</tr>
	
	<tr>
    <td><label>Phone Number </label></td>
	<td><input type="text" name="phoneNumber" pattern="[7-9]{1}[0-9]{9}" 
       title="Phone number with 7-9 and remaing 9 digit with 0-9" id="phonenumber">
        <span id="span5"><b>Enter a Valid Mobile Address</b></span>
        <span id="span6"><b>This field can't be Empty</b></span>
        </td>
	   
	</tr>
	
	
	
	</table>
	
    <input type="button" name="previous" class="previous action-button" value="Previous" />
    <a href="${pageContext.request.contextPath }/"
							class="next action-button">Login Page</a> 
    <input type="button" name="next" class="next action-button" value="Next" />

  </fieldset>
  
  
  
  <fieldset>
    <legend>Residency Details</legend>
	<br><br>
	
	<table class="gfg" cellpadding="2" width="100%" bgcolor="2cdea6" align="center" cellspacing="2">
	
	<tr>
    <td><label>Street Address: </label></td>
    <td><input type="text" name="streetAddress" id="streetaddress" />
        <span id="span9"><b>This field can't be Empty</b></span></td>
	</tr>
	
	<tr>
    <td><label>Street Address Line 2: </label></td>
    <td><input type="text" name="streetAddress2" /></td>
	</tr>
    
	<tr>
    <td><label>City:</label></td>
    <td><input type="text" id="city" name="userCity" id="city">
        <span id="span10"><b>This field can't be Empty</b></span></td>
	</tr>
	

	<tr>
    <td><label>State / Province </label></td>
	<td><input type="text" name="state" placeholder="state"  id="state">
        <span id="span11"><b>This field can't be Empty</b></span></td>
	   
	</tr>
	
	<tr>
    <td><label>Postal / Zip Code</label></td>
	<td><input type="text" name="userPostal" placeholder="Postal / Zip Code" id="zipcode">
        <span id="span12"><b>This field can't be Empty</b></span></td>
	</tr>
	
	<tr>
    <td><label>Country </label></td>
	<td><select id="inpbox" name="userCountry">
   <option value="India" selected>INDIA</option>
   <option value="Afganistan">USA</option>
   <option value="Albania">RUSSIA</option>
   <option value="Algeria">BRAZIL</option>
   <option value="American Samoa">CHINA</option>
   <option value="Andorra">AUSTRALIA</option>
   </select></td>
	</tr>
	
	
	</table>
	
    <input type="button" name="previous" class="previous action-button" value="Previous" />
    <a href="${pageContext.request.contextPath }/"
							class="next action-button">Login Page</a> 
    <input type="button" name="next" class="next action-button" value="Next" />

  </fieldset>
  
  
  
  <fieldset>
  
    <legend>Educational Details</legend>
	<br><br>
	
	<table class="gfg" cellpadding="2" width="100%" bgcolor="c0de2c" align="center" cellspacing="2">
    
	<tr>
    <td><label>School Name</label></td>
	<td><input type="text" name="userSchoolName" id="schoolname" /><span id="span13"><b>This field can't be Empty</b></span></td>
	</tr>
	
	<tr>
    <td><label>Year of passout</label></td>
	<td><select id="inpbox" name="userSchoolPassout">
    <option value="" selected="selected" disabled="disabled">  -- Year --  </option>
    <option value="2016">2016</option>
    <option value="2015">2015</option>
    <option value="2014">2014</option>
	<option value="2014">2013</option>
	<option value="2014">2012</option>
	<option value="2014">2011</option>
	<option value="2014">2010</option>
  </select></td>
	</tr>
	
	
	<tr>
    <td><label>High School/College Name </label></td>
	<td><input type="text" name="userCollegeName" id="collegename" /><span id="span14"><b>This field can't be Empty</b></span></td>
	</tr>
	
	<tr>
    <td><label>Year of passout</label></td>
	<td><select id="inpbox" name="userCollegePassout">
    <option value="" selected="selected" disabled="disabled">  -- Year --  </option>
    <option value="2020">2020</option>
    <option value="2019">2019</option>
    <option value="2018">2018</option>
    <option value="2017">2017</option>
    <option value="2016">2016</option>
    <option value="2015">2015</option>
    <option value="2014">2014</option>
  </select></td>
	</tr>
	
	
	<tr>
    <td><label>Select Qualification </label></td>
	<td><select id="inpbox" name="userQualification">
	<option value="" selected="selected" disabled="disabled">  -- select one --  </option>
    <option value="graduate">Graduate</option>
    <option value="post-graduate">Post-Graduate</option>
	</select></td>
	</tr>
	
	
	<tr>
    <td><label>Select Degree </label></td>
	<td><select id="inpbox" name="userDegree">
    <option value="" selected="selected" disabled="disabled">  -- select one --  </option>
    <option value="Bsc">Bsc</option>
    <option value="Bcom">Bcom</option>
    <option value="Btech">Btech</option>
    <option value="MBA">MBA</option>
    <option value="Bachelor's degree">Bachelor's degree</option>
    <option value="Master's degree">Master's degree</option>
    <option value="Doctorate or higher">Doctorate or higher</option>
  </select></td>
	</tr>
  
    <tr>
    <td><label>Year of passout </label></td>
	<td><select id="inpbox" name="userDegreePassout">
    <option value="" selected="selected" disabled="disabled">   -- Year --  </option>
    <option value="2020">2020</option>
    <option value="2019">2019</option>
    <option value="2018">2018</option>
    <option value="2017">2017</option>
    <option value="2016">2016</option>
    <option value="2015">2015</option>
    <option value="2014">2014</option>
	<option value="2016">2013</option>
    <option value="2015">2012</option>
    <option value="2014">2011</option>
  </select></td>
	</tr>
	
	</table>
    <input type="button" name="previous" class="previous action-button" value="Previous" />
    <a href="${pageContext.request.contextPath }/"
							class="next action-button">Login Page</a> 
    <button class="action-button">Register</button>
  </fieldset>
</form>
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>
 
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<!--Custom styles-->
	

	<script src="<c:url value="/resources/js/script.js" />"> </script>
<script src="<c:url value="/resources/js/validation.js" />"> </script>
<script>
    $(document).ready(function(){
     $('email').change(function(){
         var emailval = $('#email').val();
		 
		 $.ajax({
		     type:'POST',
			 data:{emailval:email},
			 url:'ValueExistCheck',
			 success: function(result){
			     $('#result').html(result);
			 }
		 });
     });   
    });
    
</script>>

</body>
</html>
