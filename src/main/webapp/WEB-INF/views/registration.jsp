<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript"
	src="resources/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="resources/js/jquery.validate.js"></script>
<script type="text/javascript" src="resources/js/validation.js"></script>
<script type="text/javascript" src="resources/js/registration.js"></script>
<link rel="stylesheet" type="text/css"
	href="resources/css/datepicker.css">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-sm-offset-1">
				<h1
					style="padding-top: 50px; border-bottom-style: solid; border-color: #CCCCFF; border-width: 5px">
					Registration <small>Don't be shy to join us </small>
				</h1>
			</div>
		</div>



		<form:form method="post" action="registration" modelAttribute="user"
			id="registrationForm" onsubmit="validateForm(event)">
			<div class="row">
				<div class="form-group">
					<label for="firstName"
						class="col-sm-2 col-sm-offset-1 control-label">
						<h4>First Name</h4>
					</label>
					<div class="col-sm-5">
						<form:input path="firstName" type="text" class="form-control"
							id="firstName" placeholder="Last Name" />
						</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label for="lastName"
						class="col-sm-2 col-sm-offset-1 control-label">
						<h4>Last Name</h4>
					</label>
					<div class="col-sm-5">
						<form:input path="lastName" type="text" class="form-control"
							id="lastName" placeholder="Last Name" />
						<p class="text-danger"></p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group" id="trial">
					<label for="login" class="col-sm-2  col-sm-offset-1 control-label"><h4>Login</h4>
					</label>
					<div class="col-sm-5" id="test1">
						<form:input path="login" type="text" class="form-control"
							id="login" placeholder="Login" onblur="checkLoginIdentity()" />
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label for="gender" class="col-sm-2 col-sm-offset-1 control-label"><h4>Gender</h4>
					</label>
					<div class="col-lg-1">
						<div class="input-group">
							<label for="female"
								class="col-sm-1 col-sm-offset-1 control-label"> Female</label> <span
								class="input-group-addon"> <form:radiobutton
									path="gender" value="FEMALE" />
							</span> <label for="male" class="col-sm-1 col-sm-offset-1 control-label">
								Male</label> <span class="input-group-addon"> <form:radiobutton
									path="gender" value="MALE" />
							</span> <span> </span>


						</div>
					</div>
				</div>
			</div>





			<div class="row">
				<div class="form-group">
					<label for="password"
						class="col-sm-2 col-sm-offset-1 control-label"><h4>Password</h4>
					</label>
					<div class="col-sm-5">
						<form:input path="password" type="password" class="form-control"
							id="password" placeholder="Password" />
					</div>
				</div>
			</div>




			<div class="row">
				<div class="form-group">
					<label for="repeatPassword"
						class="col-sm-2 col-sm-offset-1 control-label"><h4>Repeat
							password</h4> </label>
					<div class="col-sm-5">
						<input name="repeatPassword" type="password" class="form-control"
							id="repeatPassword" placeholder="Password" onblur="checkIdenticalPasswords()"/>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label for="email" class="col-sm-2 col-sm-offset-1 control-label"><h4>Email</h4>
					</label>
					<div class="col-sm-5" id="test2">
						<form:input path="email" type="text" class="form-control"
							id="email" placeholder="some.email@gmail.com" onblur="checkEmailIdentity()"
							 />
						<div id="loading_indicator"></div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label for="dateOfBirth"
						class="col-sm-2 col-sm-offset-1 control-label"><h4>Date
							of Birth</h4> </label>
					<div class="col-sm-5">
						<form:input path="birthday" type="text"
							class="datepicker form-control" id="dateOfBirth"
							placeholder="MM/dd/yyyy" pattern="MM/dd/yyyy"
							 />
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-7 col-sm-2">
					<button type="submit" class="btn btn-primary">Sign up</button>
				</div>
			</div>
		</form:form>
	</div>
	<script type="text/javascript">
		$('.datepicker').datepicker();
		
	</script>
</body>
</html>