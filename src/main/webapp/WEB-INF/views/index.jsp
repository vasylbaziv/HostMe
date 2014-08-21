<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
 <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
<script type="text/javascript"
	src="resources/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="resources/js/jquery.validate.js"></script>
<script type="text/javascript" src="resources/js/validation.js"></script>
<script type="text/javascript" src="resources/js/registration.js"></script>
<link rel="stylesheet" type="text/css"
	href="resources/css/datepicker.css">
<title>Host me</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>



	<section class="content-header">
	<h1>
		Dashboard <small>Control panel</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active">Dashboard</li>
	</ol>
	</section>

	<section class="content"> <!-- Main row -->
	<div class="row">

		<div class="col-md-12">
			<div class="box box-solid">
				<div class="box-header">
					<h3 class="box-title">Carousel</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div id="carousel-example-generic" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0"
								class=""></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"
								class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"
								class=""></li>
						</ol>
						<div class="carousel-inner">
							<div class="item">
								<img src="resources/images/index-hosting1.jpg" alt="First slide">
								<div class="carousel-caption">First Slide</div>
							</div>
							<div class="item active">
								<img src="resources/images/index-hosting2.jpg"
									alt="Second slide">
								<div class="carousel-caption">Second Slide</div>
							</div>
							<div class="item">
								<img src="resources/images/index-hosting3.jpg" alt="Third slide">
								<div class="carousel-caption">Third Slide</div>
							</div>
						</div>
						<a class="left carousel-control" href="#carousel-example-generic"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left"></span>
						</a> <a class="right carousel-control"
							href="#carousel-example-generic" data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right"></span>
						</a>
					</div>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->
		</div>


		<!-- Left col -->

		<!-- /.Left col -->

		<!-- right col -->

		<!-- right col -->
	</div>
	<!-- /.row (main row) --> <!-- Small boxes (Stat box) -->
	<div class="row">
		<div class="col-lg-3 col-xs-6">
			<!-- small box -->
			<div class="small-box bg-aqua">
				<div class="inner">
					<h3>150</h3>
					<p>New Orders</p>
				</div>
				<div class="icon">
					<i class="ion ion-bag"></i>
				</div>
				<a href="#" class="small-box-footer"> More info <i
					class="fa fa-arrow-circle-right"></i>
				</a>
			</div>
		</div>
		<!-- ./col -->
		<div class="col-lg-3 col-xs-6">
			<!-- small box -->
			<div class="small-box bg-green">
				<div class="inner">
					<h3>
						53<sup style="font-size: 20px">%</sup>
					</h3>
					<p>Bounce Rate</p>
				</div>
				<div class="icon">
					<i class="ion ion-stats-bars"></i>
				</div>
				<a href="#" class="small-box-footer"> More info <i
					class="fa fa-arrow-circle-right"></i>
				</a>
			</div>
		</div>
		<!-- ./col -->
		<div class="col-lg-3 col-xs-6">
			<!-- small box -->
			<div class="small-box bg-yellow">
				<div class="inner">
					<h3>44</h3>
					<p>User Registrations</p>
				</div>
				<div class="icon">
					<i class="ion ion-person-add"></i>
				</div>
				<security:authorize access="! isAuthenticated()">
				<div data-toggle="modal" data-target="#registrationModal"
					class="btn small-box-footer">
					More info <i class="fa fa-arrow-circle-right"></i>
				</div>
				</security:authorize>
			</div>
		</div>
		<!-- ./col -->
		<div class="col-lg-3 col-xs-6">
			<!-- small box -->
			<div class="small-box bg-red">
				<div class="inner">
					<h3>65</h3>
					<p>Unique Visitors</p>
				</div>
				<div class="icon">
					<i class="ion ion-pie-graph"></i>
				</div>
				<a href="#"></a>More info <i
					class="fa fa-arrow-circle-right"></i>
				
			</div>
		</div>
		<!-- ./col -->
	</div>
	<!-- /.row --> 
	<!-- Login Modal -->
	
	<div class="modal fade" id="registrationModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog form-box ">
		
				<form:form method="post" action="registration"
						modelAttribute="user" id="registrationForm"
						onsubmit="validateForm(event)">
				<div class="modal-content">
					<div class="header bg-blue">

						<a href="<c:url value='/index' />" type="button" class="close" >
							<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
						</a>
						<h4 class="modal-title" id="myModalLabel">Join us</h4>
					</div>
					<div class="modal-body">
						<div class="body bg-gray">
							<div class="form-group">
					<div>
						<form:input path="firstName" type="text" class="form-control"
							id="firstName" placeholder="First Name" />
					</div>
				</div>
				<div class="form-group">
				<div>
					<form:input path="lastName" type="text" class="form-control"
						id="lastName" placeholder="Last Name" />
						</div>
						
				</div>
				<div class="form-group">
				<div>
					<form:input path="login" type="text" class="form-control"
						id="login" placeholder="Login" onblur="checkLoginIdentity()" />
						</div>
				</div>
				<div class="form-group">
				<div>
					<form:input path="password" type="password" class="form-control"
						id="password" placeholder="Password" />
				</div>
				</div>
				<div>
				<div class="form-group">
				<div>
					<input name="repeatPassword" type="password" class="form-control"
						id="repeatPassword" placeholder="Password"
						onblur="checkIdenticalPasswords()" />
						</div>
				</div>
				
		
				<div class="form-group">
				
							<form:radiobutton class="radio inline"
									path="gender" value="FEMALE" />
									Female
							 <form:radiobutton
									path="gender" value="MALE" class="radio inline"/>
									Male
							</div>
						
				<div class="form-group">
				<div>
					<form:input path="email" type="text" class="form-control"
						id="email" placeholder="some.email@gmail.com"
						onblur="checkEmailIdentity()" />
						</div>
				</div>
				<div class="form-group">
				<div>
					<input name="birthday_date" type="text"
						class="datepicker form-control" id="dateOfBirth"
						placeholder="MM/dd/yyyy" pattern="MM/dd/yyyy" />
						</div>
						<form:input path="birthday" type="hidden" id="dateMili"/>
				</div>
						</div>




					</div>
					<div class="modal-footer">
						<a href="<c:url value='/index' />" type="button" class="btn btn-primary btn-block"
							>Close</a>
						<button class="btn btn-primary btn-block " type="submit" onclick='birthToMili(this)'>Sumbit</button>

					</div>

				</div>
				</div>
			</form:form>
		</div>
	</div>
	

	<!-- Login Modal --> </section>

	<script type="text/javascript">
	$('.datepicker').datepicker();
	(function ( $ ) {
	  $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
          checkboxClass: 'icheckbox_flat-red',
          radioClass: 'iradio_flat-red'
      });
	});

	</script>

</body>
</html>
