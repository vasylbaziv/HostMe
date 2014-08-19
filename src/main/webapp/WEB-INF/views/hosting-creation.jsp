<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="bootstrap.css">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<h1
					style="padding-top: 50px; border-bottom-style: solid; border-color: #EEEEEE; border-width: 5px">
					Make your own hosting</h1>
			</div>
		</div>
		<form:form method="post" action="hosting-creation"
			modelAttribute="hosting" id="hostingCreationForm">
			<div class="row">
				<div class="form-group">
					<label for="country" class="col-lg-2 control-label"><h4>Country</h4>
					</label>
					<div class="col-lg-5">
						<form:select class="form-control" path="country" id="country">
							<!-- 							Countries from the DB -->
							<option>Ukraine</option>
							<option>France</option>
							<option>Italy</option>
							<option>Spain</option>
						</form:select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label for="region" class="col-lg-2 control-label"><h4>Region</h4>
					</label>
					<div class="col-lg-5">
						<form:select class="form-control" path="region" id="region">
							Regions from the DB
							<option>Cherkasy Oblast</option>
							<option>Chernihiv Oblast</option>
							<option>Chernivtsi Oblast</option>
							<option>Dnipropetrovsk Oblast</option>
						</form:select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label for="city" class="col-lg-2 control-label"><h4>City</h4>
					</label>
					<div class="col-lg-5">
						<form:input path="city" type="text" class="form-control" id="city"
							placeholder="City (e.g. Lviv)" />
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label for="address" class="col-lg-2 control-label"><h4>Address</h4>
					</label>
					<div class="col-lg-5">
						<form:input path="address" type="text" class="form-control"
							id="address" placeholder="Address (e.g. Pasternaka Str., 5)" />
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label for="Address" class="col-lg-2 control-label"><h4>Number
							of people (min and max)</h4> </label>
					<div class="col-lg-2">
						<form:select class="form-control" path="minNumberOfGuests"
							id="min">
							<c:forEach var="i" begin="1" end="20">
   							<option>${i}</option>
   							</c:forEach>
						</form:select>
					</div>
					<div class="col-lg-2">
						<form:select class="form-control" path="maxNumberOfGuests"
							id="max">
							<c:forEach var="i" begin="1" end="20" step="1" varStatus="loop">
   							<option>${loop.end - i + loop.begin}</option>
   							</c:forEach>
						</form:select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label for="gender allowed" class="col-lg-2 control-label"><h4>Gender
							allowed</h4> </label>
					<div class="col-lg-5 input-sm">
						<label class="radio-inline"> <form:radiobutton
								path="gender" id="male" value="MALE" />Male
						</label> <label class="radio-inline"> <form:radiobutton
								path="gender" id="female" value="FEMALE" />Female
						</label> <label class="radio-inline"> <form:radiobutton
								path="gender" id="both" value="UNSPECIFIED" />Both
						</label>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label class="col-lg-2 control-label"><h4>Smoking
							allowed</h4> </label>
					<div class="col-lg-4">
						<label class="checkbox"> <form:checkbox path="smoking"
								id="smoking" />
						</label>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label class="col-lg-2 control-label"><h4>Family
							allowed</h4> </label>
					<div class="col-lg-4">
						<label class="checkbox"> <form:checkbox path="family"
								id="family" />
						</label>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label class="col-lg-2 control-label"><h4>Children
							allowed</h4> </label>
					<div class="col-lg-4">
						<label class="checkbox"> <form:checkbox path="children"
								id="children" />
						</label>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label class="col-lg-2 control-label"><h4>Pets allowed</h4>
					</label>
					<div class="col-lg-4">
						<label class="checkbox"> <form:checkbox path="pets"
								id="pets" />
						</label>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="exampleInputFile">Add photos of your hosting</label> <input
					type="file" id="photo">
			</div>
			<div class="row">
				<div class="form-group">
					<label for="Notes" class="col-lg-2 control-label"><h4>Add
							some notes</h4> </label>
					<div class="col-lg-5">
						<form:textarea path="notes" class="form-control" id="notes"
							rows="3" />
					</div>
				</div>
			</div>
			<button type="submit" class="btn btn-primary"
				style="margin-bottom: 30px; margin-top: 10px;">Create
				hosting</button>
		</form:form>
		<script src="jquery-2.1.1.js"></script>
		<script src="bootstrap.js"></script>
		<script type="text/javascript">
			$('#myModal').modal('show');
		</script>

		<script type="text/javascript">
			$("#createHosting").on("click", function() {
				window.location = "profile";
			});
		</script>
</body>
</html>