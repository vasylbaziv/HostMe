<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript"
	src="resources/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="resources/js/jquery.validate.js"></script>
<script type="text/javascript" src="resources/js/validation.js"></script>
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
						<select class="form-control" name="country" id="country">
							<!--Countries from the DB-->
							<option>Ukraine</option>
							<option>France</option>
							<option>Italy</option>
							<option>Spain</option>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label for="region" class="col-lg-2 control-label"><h4>Region</h4>
					</label>
					<div class="col-lg-5">
						<select class="form-control" name="region" id="region">
							<!--Regions from the DB-->
							<option>Cherkasy Oblast</option>
							<option>Chernihiv Oblast</option>
							<option>Chernivtsi Oblast</option>
							<option>Dnipropetrovsk Oblast</option>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label for="city" class="col-lg-2 control-label"><h4>City</h4>
					</label>
					<div class="col-lg-5">
						<input name="city" type="text" class="form-control" id="city"
							placeholder="City (e.g. Lviv)">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label for="address" class="col-lg-2 control-label"><h4>Address</h4>
					</label>
					<div class="col-lg-5">
						<input name="address" type="text" class="form-control"
							id="address" placeholder="Address (e.g. Pasternaka Str., 5)">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label for="Address" class="col-lg-2 control-label"><h4>Number
							of people</h4> </label>
					<div class="col-lg-2">
						<select class="form-control" name="min" id="min">
							<option>Min</option>
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
							<option>6</option>
							<option>7</option>
							<option>8</option>
							<option>9</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
							<option>13</option>
							<option>14</option>
							<option>15</option>
							<option>16</option>
							<option>17</option>
							<option>18</option>
							<option>19</option>
							<option>20</option>
						</select>
					</div>
					<div class="col-lg-2">
						<select class="form-control" name="max" id="max">
							<option>Max</option>
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
							<option>6</option>
							<option>7</option>
							<option>8</option>
							<option>9</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
							<option>13</option>
							<option>14</option>
							<option>15</option>
							<option>16</option>
							<option>17</option>
							<option>18</option>
							<option>19</option>
							<option>20</option>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label for="gender allowed" class="col-lg-2 control-label"><h4>Gender
							allowed</h4> </label>
					<div class="col-lg-5 input-sm">
						<label class="radio-inline"> <input type="radio"
							name="gender" id="male" value="male">Male
						</label> <label class="radio-inline"> <input type="radio"
							name="gender" id="female" value="female">Female
						</label> <label class="radio-inline"> <input type="radio"
							name="gender" id="both" checked value="both" selected>Both
						</label>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label class="col-lg-2 control-label"><h4>Smoking
							allowed</h4> </label>
					<div class="col-lg-4">
						<label class="checkbox"> <input checked type="checkbox"
							name="smoking" id="smoking">
						</label>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label class="col-lg-2 control-label"><h4>Family
							allowed</h4> </label>
					<div class="col-lg-4">
						<label class="checkbox"> <input checked type="checkbox"
							name="family" id="family">
						</label>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label class="col-lg-2 control-label"><h4>Children
							allowed</h4> </label>
					<div class="col-lg-4">
						<label class="checkbox"> <input checked type="checkbox"
							name="children" id="children">
						</label>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group">
					<label class="col-lg-2 control-label"><h4>Pets allowed</h4>
					</label>
					<div class="col-lg-4">
						<label class="checkbox"> <input checked type="checkbox"
							name="pets" id="pets">
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
						<textarea name="notes" class="form-control" id="notes" rows="3"></textarea>
					</div>
				</div>
			</div>
			<button id="createHosting" type="submit" class="btn btn-primary"
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