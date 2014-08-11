function checkIdenticalPasswords() {
	var error = $("<div/>", {
		html : 'Passwords doesn*t match!',
		"class" : "error"
	});
	var password = $('#password');
	var repeatedPassword = $('#repeatPassword');
	if (password.val() != repeatedPassword.val()) {
		if ($('#mismatch').length) {
			$('#mismatch').show();

		} else {
			error.attr('id', 'mismatch');
			error.insertAfter(password);

		}
	} else {
		$('#mismatch').hide();

	}
	;

}
function checkEmailIdentity() {
	var email = $('#email');
	var emailValue = email.val();
	var error = $("<div/>", {
		html : 'User with such email already exists!!',
		"class" : "error"

	});
	$.ajax({
		url : 'check-email',
		data : {
			login : emailValue,
		},
		
		success : function(response) {
			if (response == true) {
				if ($('#emailError').length) {
					$('#emailError').show();
				} else {
					error.attr("id", "emailError");
					error.insertAfter(login);
				}
			} else {

				$('#emailError').hide();
			}
		}
	});
}

function testAJAX() {
	var loginValue = $('#login').val();
	var emailValue = $('#email').val();
	var error = $("<div/>", {
		html : 'Already exists!!',
		"class" : "error"
	});
	$("#loading_indicator").ajaxStart(function() {
		$(this).show();
	}).ajaxStop(function() {
		$(this).hide();
	});
	$.ajax({

		url : 'test',
		data : {
			email : emailValue,
			login : loginValue
		},
		dataType : "json",
		success : function(response) {
			if (response == true) {

				$('#test1').append(error);
				$('#test2').append(error);
			}
		}

	});
}
function checkLoginIdentity() {
	var login = $('#login');
	var loginValue = $('#login').val();
	var error = $("<div/>", {
		html : 'User with such login already exists!!',
		"class" : "error",
			

	});
	$.ajax({
		url : 'check-login',
		data : {
			login : loginValue,
		},
		
		success : function(response) {
			if (response == true) {
				if ($('#loginError').length) {
					$('#loginError').show();
				} else {
					error.attr("id", "loginError");
					error.insertAfter(login);
				}
			} else {

				$('#loginError').hide();
			}
		}
	});
};
