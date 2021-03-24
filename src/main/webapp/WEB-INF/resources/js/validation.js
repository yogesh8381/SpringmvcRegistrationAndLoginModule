$(document).ready(function() {

	$('#email').focusout(function() {
		email_validate();
	});

	function email_validate() {

		var pattern = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
		var email = $('#email').val();

		if (email !== '') {
			if (pattern.test(email)) {
				$('#lbl').css('color', '#66ff33');
				$('#email').css('border', '2px solid #66ff33');
				$('#success').css('display', 'block');
				$('#error').css('display', 'none');
				$('#span1').css('display', 'none');
				$('#span2').css('display', 'none');
				$('#warning').css('display', 'none');
			}
			else {
				$('#lbl').css('color', 'red');
				$('#email').css('border', '2px solid red');
				$('#error').css('display', 'block');
				$('#success').css('display', 'none');
				$('#span1').css('display', 'block');
				$('#span2').css('display', 'none');
				$('#warning').css('display', 'none');
			}
		}
		else {
			$('#span2').css('display', 'block');
			$('#lbl').css('color', 'yellow');
			$('#email').css('border', '2px solid yellow');
			$('#error').css('display', 'none');
			$('#success').css('display', 'none');
			$('#warning').css('display', 'block');
			$('#span1').css('display', 'none');
		}
	}

	$('#password').focusout(function() {
		password_validate();
	});

	function password_validate() {


		var password = $('#password').val();

		if (password == '') {
			$('#span3').css('display', 'block');
			$('#lbl').css('color', 'yellow');
			$('#password').css('border', '2px solid yellow');
			$('#error').css('display', 'none');
			$('#success').css('display', 'none');
			$('#warning').css('display', 'block');
			$('#span1').css('display', 'none');

		}
		else {
			$('#span3').css('display', 'none');
			$('#lbl').css('color', '#66ff33');
			$('#password').css('border', '2px solid #66ff33');
			$('#error').css('display', 'none');
			$('#success').css('display', 'none');
			$('#warning').css('display', 'none');
			$('#span1').css('display', 'none');

		}


	};

	$('#cpassword').focusout(function() {
		cpassword_validate();
	});

	function cpassword_validate() {


		var password = $('#password').val();
		var cpassword = $('#cpassword').val();

		if (cpassword == password) {
			$('#lbl').css('color', '#66ff33');
			$('#cpassword').css('border', '2px solid #66ff33');
			$('#success').css('display', 'block');
			$('#error').css('display', 'none');
			$('#warning').css('display', 'none');
			$('#span4').css('display', 'none');
		}
		else {
			$('#lbl').css('color', 'red');
			$('#cpassword').css('border', '2px solid red');
			$('#error').css('display', 'block');
			$('#success').css('display', 'none');
			$('#span4').css('display', 'block');
			$('#warning').css('display', 'none');
		}




	};

	$('#phonenumber').focusout(function() {
		phonenumber_validate();
	});

	function phonenumber_validate() {

		var pattern = /^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$/;
		var phonenumber = $('#phonenumber').val();

		if (phonenumber !== '') {
			if (pattern.test(phonenumber)) {
				$('#lbl').css('color', '#66ff33');
				$('#phonenumber').css('border', '2px solid #66ff33');
				$('#success').css('display', 'block');
				$('#error').css('display', 'none');
				$('#span5').css('display', 'none');
				$('#span6').css('display', 'none');
				$('#warning').css('display', 'none');
			}
			else {
				$('#lbl').css('color', 'red');
				$('#phonenumber').css('border', '2px solid red');
				$('#error').css('display', 'block');
				$('#success').css('display', 'none');
				$('#span5').css('display', 'block');
				$('#span6').css('display', 'none');
				$('#warning').css('display', 'none');
			}
		}
		else {
			$('#span6').css('display', 'block');
			$('#lbl').css('color', 'yellow');
			$('#phonenumber').css('border', '2px solid yellow');
			$('#error').css('display', 'none');
			$('#success').css('display', 'none');
			$('#warning').css('display', 'block');
			$('#span5').css('display', 'none');
		}
	}

	$('#email1').focusout(function() {
		email1_validate();
	});

	function email1_validate() {

		var pattern = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		var email1 = $('#email1').val();

		if (email1 !== '') {
			if (pattern.test(email1)) {
				$('#lbl').css('color', '#66ff33');
				$('#email1').css('border', '2px solid #66ff33');
				$('#success').css('display', 'block');
				$('#error').css('display', 'none');
				$('#span7').css('display', 'none');
				$('#span8').css('display', 'none');
				$('#warning').css('display', 'none');
			}
			else {
				$('#lbl').css('color', 'red');
				$('#email1').css('border', '2px solid red');
				$('#error').css('display', 'block');
				$('#success').css('display', 'none');
				$('#span7').css('display', 'block');
				$('#span8').css('display', 'none');
				$('#warning').css('display', 'none');
			}
		}
		else {
			$('#span8').css('display', 'block');
			$('#lbl').css('color', 'yellow');
			$('#email1').css('border', '2px solid yellow');
			$('#error').css('display', 'none');
			$('#success').css('display', 'none');
			$('#warning').css('display', 'block');
			$('#span7').css('display', 'none');
		}
	}
	$('#streetaddress').focusout(function() {
		streetaddress_validate();
	});

	function streetaddress_validate() {


		var streetaddress = $('#streetaddress').val();

		if (streetaddress == '') {
			$('#lbl').css('color', 'red');
			$('#streetaddress').css('border', '2px solid red');
			$('#error').css('display', 'block');
			$('#success').css('display', 'none');
			$('#span9').css('display', 'block');
			$('#warning').css('display', 'none');

		}
		else {
			$('#lbl').css('color', '#66ff33');
			$('#streetaddress').css('border', '2px solid #66ff33');
			$('#success').css('display', 'block');
			$('#error').css('display', 'none');
			$('#warning').css('display', 'none');
			$('#span9').css('display', 'none');

		}




	};
	$('#city').focusout(function() {
		city_validate();
	});

	function city_validate() {


		var city = $('#city').val();


		if (city == '') {
			$('#lbl').css('color', 'red');
			$('#city').css('border', '2px solid red');
			$('#error').css('display', 'block');
			$('#success').css('display', 'none');
			$('#span10').css('display', 'block');
			$('#warning').css('display', 'none');

		}
		else {
			$('#lbl').css('color', '#66ff33');
			$('#city').css('border', '2px solid #66ff33');
			$('#success').css('display', 'block');
			$('#error').css('display', 'none');
			$('#warning').css('display', 'none');
			$('#span10').css('display', 'none');

		}




	};
	$('#state').focusout(function() {
		state_validate();
	});

	function state_validate() {


		var state = $('#state').val();


		if (state == '') {
			$('#lbl').css('color', 'red');
			$('#state').css('border', '2px solid red');
			$('#error').css('display', 'block');
			$('#success').css('display', 'none');
			$('#span11').css('display', 'block');
			$('#warning').css('display', 'none');

		}
		else {
			$('#lbl').css('color', '#66ff33');
			$('#state').css('border', '2px solid #66ff33');
			$('#success').css('display', 'block');
			$('#error').css('display', 'none');
			$('#warning').css('display', 'none');
			$('#span11').css('display', 'none');

		}




	};
	$('#zipcode').focusout(function() {
		zipcode_validate();
	});

	function zipcode_validate() {


		var zipcode = $('#zipcode').val();

		if (zipcode == '') {
			$('#lbl').css('color', 'red');
			$('#zipcode').css('border', '2px solid red');
			$('#error').css('display', 'block');
			$('#success').css('display', 'none');
			$('#span12').css('display', 'block');
			$('#warning').css('display', 'none');

		}
		else {
			$('#lbl').css('color', '#66ff33');
			$('#zipcode').css('border', '2px solid #66ff33');
			$('#success').css('display', 'block');
			$('#error').css('display', 'none');
			$('#warning').css('display', 'none');
			$('#span12').css('display', 'none');

		}




	};
	$('#schoolname').focusout(function() {
		schoolname_validate();
	});

	function schoolname_validate() {


		var schoolname = $('#schoolname').val();

		if (schoolname == '') {
			$('#lbl').css('color', 'red');
			$('#schoolname').css('border', '2px solid red');
			$('#error').css('display', 'block');
			$('#success').css('display', 'none');
			$('#span13').css('display', 'block');
			$('#warning').css('display', 'none');

		}
		else {
			$('#lbl').css('color', '#66ff33');
			$('#schoolname').css('border', '2px solid #66ff33');
			$('#success').css('display', 'block');
			$('#error').css('display', 'none');
			$('#warning').css('display', 'none');
			$('#span13').css('display', 'none');

		}




	};
	$('#collegename').focusout(function() {
		collegename_validate();
	});

	function collegename_validate() {


		var collegename = $('#collegename').val();

		if (collegename == '') {
			$('#lbl').css('color', 'red');
			$('#collegename').css('border', '2px solid red');
			$('#error').css('display', 'block');
			$('#success').css('display', 'none');
			$('#span14').css('display', 'block');
			$('#warning').css('display', 'none');

		}
		else {
			$('#lbl').css('color', '#66ff33');
			$('#collegename').css('border', '2px solid #66ff33');
			$('#success').css('display', 'block');
			$('#error').css('display', 'none');
			$('#warning').css('display', 'none');
			$('#span14').css('display', 'none');

		}




	};
	$('#fname').focusout(function() {
		fname_validate();
	});

	function fname_validate() {


		var fname = $('#fname').val();

		if (fname == '') {
			$('#lbl').css('color', 'red');
			$('#fname').css('border', '2px solid red');
			$('#error').css('display', 'block');
			$('#success').css('display', 'none');
			$('#span15').css('display', 'block');
			$('#warning').css('display', 'none');

		}
		else {
			$('#lbl').css('color', '#66ff33');
			$('#fname').css('border', '2px solid #66ff33');
			$('#success').css('display', 'block');
			$('#error').css('display', 'none');
			$('#warning').css('display', 'none');
			$('#span15').css('display', 'none');

		}




	};
	$('#lname').focusout(function() {
		lname_validate();
	});

	function lname_validate() {


		var lname = $('#lname').val();

		if (lname == '') {
			$('#lbl').css('color', 'red');
			$('#lname').css('border', '2px solid red');
			$('#error').css('display', 'block');
			$('#success').css('display', 'none');
			$('#span16').css('display', 'block');
			$('#warning').css('display', 'none');

		}
		else {
			$('#lbl').css('color', '#66ff33');
			$('#lname').css('border', '2px solid #66ff33');
			$('#success').css('display', 'block');
			$('#error').css('display', 'none');
			$('#warning').css('display', 'none');
			$('#span16').css('display', 'none');

		}




	};

});


