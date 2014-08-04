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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<body>
	<!-- 	<div class="modal" id="loginModal"> -->
	<!-- 		<div class="modal-dialog"> -->
	<!-- 			<div class="modal-content"> -->
	<!-- 				<div class="modal-header"> -->
	<!-- 					<button type="button" class="close" data-dismiss="modal" -->
	<!-- 						aria-hidden="true">×</button> -->
	<!-- 					<h2 class="modal-title">Log in</h2> -->

	<!-- 				</div> -->
	<!-- 				<form method="post" action="loginController" id="loginForm"> -->
	<!-- 					<div class="modal-body "> -->
	<!-- 						<div class="te"> -->

	<!-- 							<div class="input-group col-md-8"> -->
	<!-- 								<label for="login">Enter your login:</label> <input type="text" -->
	<!-- 									class="form-control" name="login" placeholder="Login"> -->
	<!-- 							</div> -->
	<!-- 							<div class="input-group col-md-8"> -->
	<!-- 								<label for="login">Enter your password:</label> <input -->
	<!-- 									type="password" class="form-control" name="password" -->
	<!-- 									placeholder="Password"> -->
	<!-- 							</div> -->

	<!-- 						</div> -->
	<!-- 					</div> -->
	<!-- 					<div class="modal-footer"> -->
	<!-- 						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
	<!-- 						<button type="submit" class="btn btn-primary">Sign in</button> -->
	<!-- 					</div> -->
	<!-- 				</form> -->
	<!-- 			</div> -->

	<!-- 		</div> -->

	<!-- 	</div> -->


	<div class="container">
		<form:form method="post" action="login" modelAttribute="user"
			id="loginForm" style="margin-top: 50px;">

			<div class="input-group col-md-8">
				<label for="login">Enter your login:</label>
				<form:input type="text" class="form-control" path="login"
					placeholder="Login" />
			</div>
			<div class="input-group col-md-8">
				<label for="login">Enter your password:</label>
				<form:input path="password" type="password" class="form-control"
					id="password" placeholder="Password" />
			</div>


			<button type="button" class="btn btn-default">Close</button>
			<button type="submit" class="btn btn-primary">Sign in</button>
		</form:form>
	</div>

</body>
</html>