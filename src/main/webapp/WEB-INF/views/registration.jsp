<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<script type="text/javascript"
	src="resources/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="resources/js/jquery.validate.js"></script>
<script type="text/javascript" src="resources/js/validation.js"></script>
<script type="text/javascript" src="resources/js/registration.js"></script>
<link rel="stylesheet" type="text/css"
	href="resources/css/datepicker.css">

<div id="myModal" class="modal">
	<div class="modal-dialog">
		<div class="modal-content col-md-8">
			
			<!-- Modal header -->
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
				</button>
				<div class="form-box" id="login-box">
					<div class="header">Register New Membership</div>
				</div>
				</div>
				<!-- Modal header -->
				
				<div class="modal-body">
				<form:form method="post" action="registration"
						modelAttribute="user" id="registrationForm"
						onsubmit="validateForm(event)">
				<div class="form-group">
					<div>
						<form:input path="firstName" type="text" class="form-control"
							id="firstName" placeholder="Last Name" />
					</div>
				</div>
				<div class="form-group">
					<form:input path="lastName" type="text" class="form-control"
						id="lastName" placeholder="Last Name" />
				</div>
				<div class="form-group">
					<form:input path="login" type="text" class="form-control"
						id="login" placeholder="Login" onblur="checkLoginIdentity()" />
				</div>
				<div class="form-group">
					<form:input path="password" type="password" class="form-control"
						id="password" placeholder="Password" />
				</div>
				<div class="form-group">
					<input name="repeatPassword" type="password" class="form-control"
						id="repeatPassword" placeholder="Password"
						onblur="checkIdenticalPasswords()" />
				</div>
				<div class="form-group">
					<form:input path="email" type="text" class="form-control"
						id="email" placeholder="some.email@gmail.com"
						onblur="checkEmailIdentity()" />
				</div>
				<div class="form-group">
					<form:input path="birthday" type="text"
						class="datepicker form-control" id="dateOfBirth"
						placeholder="MM/dd/yyyy" pattern="MM/dd/yyyy" />
				</div>
				</form:form>
				</div>

			
			<div class="modal-footer">

				<button type="submit" class="btn bg-olive btn-block">Sign
					me up</button>

				<a href="login.html" class="text-center">I already have a
					membership</a>
			

			<div class="margin text-center">
				<span>Register using social networks</span> <br />
				<button class="btn bg-light-blue btn-circle">
					<i class="fa fa-facebook"></i>
				</button>
				<button class="btn bg-aqua btn-circle">
					<i class="fa fa-twitter"></i>
				</button>
				<button class="btn bg-red btn-circle">
					<i class="fa fa-google-plus"></i>
				</button>
			</div>
			</div>
			</div>

		</div>
	</div>
	<script type="text/javascript">
	$('#myModal').show();
		$('.datepicker').datepicker();
	</script>