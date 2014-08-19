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
		<div class="left-side col-md-2"></div>
		<div class="row">


			<div class="col-md-2">
				<div class="row text-center">
					<br> <br>
					<h2>${user.firstName}${user.lastName}</h2>
					<img src="resources/images/nina.jpg" style="width: 200px;"></img> <br />
					<a href="#" class="btn btn-link">edit photo</a>
				</div>
			</div>
			<div class="col-md-5 col-md-offset-2">
				<br> <br> <br> <br> <br> <a
					href="<c:url value='edit-profile' />" class="btn btn-danger button">
					Edit Profile</a>

				<div style="padding-bottom: 24px">
					<a class="btn" href="#myModal" data-toggle="modal">Change PW</a>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 col-md-offset-2">
				<h4 class="title">General Information:</h4>
				<dl class="dl-horizontal">
					<dt>age</dt>
					<dd>${age}</dd>
					<dt>birthday</dt>
					<dd>${birth}</dd>
					<dt>sex</dt>
					<dd>${user.gender}</dd>
					<dt>login</dt>
					<dd>${user.login}</dd>
				</dl>
				<h4 class="title">Languages:</h4>
				<p class="vidstyp">

					<c:forEach items="${userLang}" var="userLang">
						<c:out value="${userLang}" />
					</c:forEach>

				</p>
			</div>
			<div class="col-md-5" style="text-align: justify">
				<h4 class="title">Personal Description:</h4>
				<p>${user.about}</p>
				<h4 class="title">Interests:</h4>
				<p>Making jewelry</p>
			</div>
		</div>
		<div class="row">
			<div class="col-md-10 col-md-offset-2">
				<div class="col-md-10">
					<br> <a href="<c:url value='hosting-creation' />"
						class="btn btn-primary button">Add hosting</a> <br> <br>
				</div>
				<div class="col-md-9">
					<table class="table table-hover">
						<thead>
							<tr style="background-color: #f9f9f9">
								<th>N</th>
								<th>Address</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>52 V.Velykoho Street, Lviv, 79053, Ukraine</td>
							</tr>
							<tr>
								<td>2</td>
								<td>One Congress Plaza, 111 Congress Avenue, Suite 2700
									Austin, TX 78701</td>
							</tr>
						</tbody>
					</table>

					<br>

				</div>
			</div>
		</div>

	</div>
</body>
</html>