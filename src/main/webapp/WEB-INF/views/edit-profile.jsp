<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="min-height: 682px;">
<head>
<link rel="stylesheet" type="text/css" href="resources/css/AdminLTE.css">
<script type="text/javascript" src="resources/js/birthday.js"></script>

</head>
<body>
	<div class="wrapper row-offcanvas row-offcanvas-left"
		style="min-height: 682px;">
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="left-side sidebar-offcanvas" style="min-height: 682px;">
		<!-- sidebar: style can be found in sidebar.less --> </aside>


		<aside class="right-side"> <!-- Content Header (Page header) -->

		<section class="content-header">
		<h1>
			Dashboard <small>Control panel</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Dashboard</li>
		</ol>
		</section> <!-- Main content --> <section class="content">

		<div class="container">

			<div class="col-md-6">
				<!-- general form elements -->
				<div class="box box-primary">
					<div class="box-header">
						<h3 class="box-title">Edit your profile</h3>
					</div>
					<!-- form start -->
					<form:form role="form" method="POST" commandName="user"
						action="edited-profile">
						<form:hidden path="userId" />
						<div class="box-body">
							<div class="form-group">
								<label for="inputLogin">Login</label>
								<form:input path="login" class="form-control" id="inputLogin"
									disabled="true" />
								<small> You can not change your login </small>
							</div>
							<div class="form-group">
								<label for="firstName">First name</label>
								<form:input path="firstName" class="form-control" id="firstName"
									value="${user.firstName}" />
							</div>
							<div class="form-group">
								<label for="lastName">Last name</label>
								<form:input path="lastName" class="form-control" id="lastName"
									value="${user.lastName}" />
							</div>

							<div class="form-group">
								<label for="gender" style="display: block; float: none">Gender</label>
								<label class="radio-inline"> <form:radiobutton
										path="gender" id="male" value="MALE" /> Male
								</label> <label class="radio-inline"> <form:radiobutton
										path="gender" id="female" value="FEMALE" /> Female
								</label>
								<div class="form-group"></div>
								<br>
								<div class="form-group">
									<label for="email">E-mail</label>
									<form:input path="email" class="form-control" id="email"
										value="${user.email}" disabled="true" />
									<small> You can change your <a class="btn-small"
										href="#myModal" data-toggle="modal">email address </a> here
									</small>
								</div>

								<div class="form-group">
									<label for="profilePicture">Profile picture</label> <input
										type="file" id="profilePicture">
									<p class="help-block">Choose your profile picture</p>
								</div>

								<div class="form-group">
									<label for="dateOfBirth">Date of birth:</label> </br> <select
										path="birthday" id="days">
									</select> <select id="months"></select> <select id="years"></select>
								</div>

								<div class="form-group">
									<label>Personal Description</label>
									<form:textarea class="form-control" path="description" rows="3"></form:textarea>

								</div>

								<div class="form-group">
									<label>Interests</label>
									<form:textarea class="form-control" path="hobby" rows="3"></form:textarea>
								</div>

								<!-- /.box-body -->

								<div class="box-footer">
									<button type="submit" class="btn btn-primary">Submit</button>
								</div>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
		</section> <!-- /.content --> </aside>
	</div>

</body>

</html>