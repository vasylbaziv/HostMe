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
<script type="text/javascript" src="resources/js/jquery.validate.js"></script>
<script type="text/javascript" src="resources/js/validation.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
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

	<!-- Just now we have this login form like trial version in next commit i*ll make it a modal form  -->
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-sm-offset-1">
				<h1
					style="padding-top: 50px; border-bottom-style: solid; border-color: #CCCCFF; border-width: 5px">
					Sign in <small>Just a trial login, modal form is coming
						soon</small>
				</h1>
			</div>
		</div>
		<c:if test="${param.success eq true }">
			<div class="row">
				<div class="col-md-6 col-md-offset-2">
					<h4 class="success_registration">You have registered!
						Congrats!Now you must log in!</h4>
				</div>
			</div>
		</c:if>
		<c:if test="${param.error eq true }">
			<div class="row">
				<div class="col-md-6 col-md-offset-2">
					<h4 class="error">Wrong login or password! Try again!</h4>
				</div>
			</div>
		</c:if>
		<c:if test="${param.logout eq true }">
			<div class="row">
				<div class="col-md-6 col-md-offset-2">
					<h4 class="error">You have logged out! To veiw content please
						log in!</h4>
				</div>
			</div>
		</c:if>

		<form class="form-signin" role="form"
			action="<c:url value='j_spring_security_check'/>" method="POST"
			id="loginForm">
			<div class="form-group">
				<div class="row">
					<label for="login" class="col-sm-1 col-sm-offset-1 control-label">
						<h4>Login</h4>
					</label>
					<div class="col-sm-5">
						<input type="text" name="j_username" class="form-control"
							placeholder="Login" required autofocus id="login">
						</p>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="row">
					<label for="password"
						class="col-sm-1 col-sm-offset-1 control-label">
						<h4>Password</h4>
					</label>
					<div class="col-sm-5">
						<input type="password" name="j_password" class="form-control"
							placeholder="Password" required id="password">

					</div>
				</div>
			</div>
			<input type="checkbox" name="_spring_security_remember_me" />
			<div class="row">
				<div class="col-sm-offset-5 col-sm-2">

					<button class="btn btn-primary btn-block " type="submit">Sign
						in</button>
				</div>
			</div>

		</form>

	</div>


</body>

</html>