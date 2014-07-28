<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-sm-offset-1">
				<h1
					style="padding-top: 50px; border-bottom-style: solid; border-color: #CCCCFF; border-width: 5px">
					Registration <small>Don't be shy to join us</small>
				</h1>
			</div>
		</div>



		<form:form method="post" action="registration" modelAttribute="user">
			<div class="row">
				<div class="form-group">
					<form:label path="firstName"
						class="col-sm-2 col-sm-offset-1 control-label">
						<h4>First Name</h4>
					</form:label>
					<div class="col-sm-5">
						<form:input path="firstName" type="text" class="form-control"
							id="firstName" placeholder="First Name" />
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
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label for="login" class="col-sm-2  col-sm-offset-1 control-label"><h4>Login</h4>
					</label>
					<div class="col-sm-5">
						<form:input path="login" type="text" class="form-control"
							id="login" placeholder="Login" />
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
									path="gender" value="Female" />
							</span> <label for="male" class="col-sm-1 col-sm-offset-1 control-label">
								Male</label> <span class="input-group-addon"> <form:radiobutton
									path="gender" value="Male" />
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
						<input path="repeatPassword" type="text" class="form-control"
							id="repeatPassword" placeholder="Password" />
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label for="email" class="col-sm-2 col-sm-offset-1 control-label"><h4>Email</h4>
					</label>
					<div class="col-sm-5">
						<form:input path="email" type="text" class="form-control"
							id="email" placeholder="some.email@gmail.com" />
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label for="dateOfBirth"
						class="col-sm-2 col-sm-offset-1 control-label"><h4>Date
							of Birth</h4> </label>
					<div class="col-sm-5">
						<form:input path="birthday" type="text" class="form-control"
							id="dateOfBirth" placeholder="MM/dd/yyyy" />
					</div>
				</div>
			</div>
			<button type="submit" value="Submit">Submit</button>
		</form:form>
	</div>
	<script type="text/javascript">
		$('#myModal').modal('show');
	</script>
</body>
</html>