<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="resources/css/daterangepicker-bs3.css">

<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap3-wysihtml5.css">

<script type="text/javascript" src="resources/js/daterangepicker.js"></script>

<script type="text/javascript"
	src="resources/js/bootstrap3-wysihtml5.all.min.js"></script>

<script type="text/javascript" src="resources/js/hosting.js"></script>


</head>
<body class="wysihtml5-supported">
	<div class="container">
		<div class="left-side col-md-2"></div>

		<div class="middle-side col-md-9">
			<div class="row">
				<div>
					<h2
						style="padding-top: 50px; border-bottom-style: solid; border-color: #EEEEEE; border-width: 5px">
						Hostel information</h2>
				</div>
			</div>

			<div class="row">
				<div class="col-md-12">
					<img src="resources/images/hostel1sm.jpg"
						style="margin-top: 10px; margin-bottom: 10px;"></img> <img
						src="resources/images/hostel2sm.jpg"
						style="margin: 10px 0px 10px 20px;"></img>
				</div>
			</div>

			<div class="row" style="margin-top: 15px;">
				<div class="col-md-3">
					<h4>
						<b>Hoster</b>
					</h4>
				</div>
				<div class="col-md-7">
					<h4>
						<a href="<c:url value='hoster?hosterId=${user.userId}' />"><c:out
								value="${user.firstName}"></c:out> ${user.lastName}</a>
					</h4>
				</div>
			</div>

			<div class="row">
				<div class="col-md-3">
					<h4>
						<b>Address</b>
					</h4>
				</div>
				<div class="col-md-7">
					<h4><a href="<c:url value='test?location=${location}'/>" >${location}</a></h4>
				</div>
			</div>

			<div class="row">
				<div class="col-md-3">
					<h4>
						<b>Number of guests</b>
					</h4>
				</div>
				<div class="col-md-7">
					<h4>${hosting.minNumberOfGuests }-${hosting.maxNumberOfGuests }</h4>
				</div>
			</div>

			<div class="row">
				<div class="col-md-3">
					<h4>
						<b>Guest types</b>
					</h4>
				</div>
				<div class="col-md-7">
					<h4>Men, Women, Children</h4>
				</div>
			</div>


			<div class="row">
				<div class="col-md-3">
					<h4>
						<b>Smoking</b>
					</h4>
				</div>
				<div class="col-md-7">
					<h4>Allowed</h4>
				</div>
			</div>

			<div class="row">
				<div class="col-md-3">
					<h4>
						<b>Family</b>
					</h4>
				</div>
				<div class="col-md-7">
					<h4>Yes</h4>
				</div>
			</div>

			<div class="row">
				<div class="col-md-3">
					<h4 style="margin-top: 18px;">
						<b>Check availability</b>
					</h4>
				</div>
				<div class="col-md-9">
					<h4>
						From <input type="date" name="availability"> To <input
							type="date" name="availability">
						<button id="avail" type="submit" class="btn btn-default"
							style="margin-left: 10px; margin-bottom: 3px;">Check</button>
					</h4>
				</div>
			</div>


			<div class="row">
			<form:form action="request" method="post" modelAttribute="request" id="send_request_form">
				<div class="col-md-10">
					<div class="box box-solid">
						<div class="box-header">
							<h3 class="box-title">Wanna send some request,man?</h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<div class="box-group" id="accordion">
								<!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
								<div class="panel box box-success">
									<div class="box-header">
										<h4 class="box-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseOne" class="collapsed"> Choose your date
												nigga </a>
										</h4>
									</div>
									<div id="collapseOne" class="panel-collapse collapse"
										style="height: 0px;">
										<div class="box-body">
											<div class="form-group">
												<label>Date and time range:</label>
												<div class="input-group">
													<div class="input-group-addon">
														<i class="fa fa-clock-o"></i>
													</div>
			
													<input name="timeRange" type="text" class="form-control pull-right"
														id="reservationtime"/>
														<form:input path="endDate" type="hidden" id="endDate"/>
														<form:input path="beginDate" type="hidden" id="beginDate"/>
														<form:input path="hosting" value="${hosting.hostingId}" type="hidden" id="hosting"/>
												</div>
												<!-- /.input group -->
											</div>
										</div>
									</div>
								</div>
								<div class="panel box box-success">
									<div class="box-header">
										<h4 class="box-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseTwo" class="collapsed"> Some extra
												wishes? </a>
										</h4>
									</div>
									<div id="collapseTwo" class="panel-collapse collapse"
										style="height: 0px;">
										<div class="form-group">
											<form:textarea path="notes" class="textarea form-control"
												placeholder="Place some text here"/>
										</div>
									</div>
								</div>
							</div>
						</div>
						<button class="btn btn-success btn-lg" onfocus="formDate()" >Send request</button>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
				</div>
						</form:form>
				<br>

			</div>
		</div>

	</div>

</body>
</html>