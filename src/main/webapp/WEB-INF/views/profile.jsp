<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="min-height: 682px;">
<head>
<link rel="stylesheet" type="text/css" href="resources/css/AdminLTE.css">



</head>
<body>

	<div class="wrapper row-offcanvas row-offcanvas-left"
		style="min-height: 682px;">
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="left-side sidebar-offcanvas" style="min-height: 682px;">
		<!-- sidebar: style can be found in sidebar.less --> </aside>


		<aside class="right-side"> <!-- Content Header (Page header) -->

		<section class="content-header"> </section> <!-- Main content --> <section
			class="content">




		<div class="container">
			<div class="col-md-6">
				<div class="box box-primary">

					<div class="box-header">
						<h3 class="box-title">Your profile</h3>
					</div>

					<div class="box-body">

						<div>
							<h2>${user.firstName}${user.lastName}</h2>

							<img src="resources/images/nina.jpg" style="width: 200px;"></img>
						</div>
						<div>
							<br /> <br /> <a href="<c:url value='edit-profile' />"
								class="btn btn-danger"> Edit Profile</a> <a class="btn"
								href="#myModal" data-toggle="modal">Change PW</a>
						</div>



						<div class="form-group">
							<h4 class="title">General Information:</h4>
							<div class="box-body">
								<dl class="dl-horizontal">
									<dt>age</dt>
									<dd>${age}</dd>
									<dt>birthday</dt>
									<dd>${birth}</dd>
									<dt>gender</dt>
									<dd>
										<c:choose>
											<c:when test="${user.gender == 'FEMALE'}">female</c:when>
											<c:when test="${user.gender == 'MALE'}">male</c:when>
										</c:choose>
									</dd>
									<dt>login</dt>
									<dd>${user.login}</dd>
								</dl>
							</div>
						</div>
						<hr>
						<div class="form-group">
							<h4>Languages:</h4>


							<c:forEach items="${user.languages}" var="languages"
								varStatus="loop">

								<c:out value="${languages.language}">
								</c:out>
								<c:if test="${!loop.last}">,  </c:if>

							</c:forEach>

						</div>
						<hr>
						<div class="form-group">
							<h4>Personal Description:</h4>

							<p>${user.description}</p>

						</div>
						<hr>
						<div class="form-group">
							<h4>Interests:</h4>
							<p>${user.hobby}</p>
						</div>
						<hr>
						<br> <a href="<c:url value='hosting-creation' />"
							class="btn btn-primary button">Add hosting</a> <br> <br>

						<!-- TABLE -->

						<c:if test="${!empty user.hostings}">
							<div align="center" class="form-group">
								<h4>Your own hostings:</h4>
							</div>
							<table id="example2" class="table table-bordered table-hover">
								<thead>
									<tr role="row">
										<th>N</th>
										<th>Address</th>
									</tr>
								</thead>
								<tbody>

									<c:set var="count" value="${0}" />
									<c:forEach items="${user.hostings}" var="hostings"
										varStatus="loop">
										<c:set var="count" value="${count+1}" />
										<tr>
											<td>${count}</td>
											<td>${hostings.country},${hostings.city},
												${hostings.address}</td>
										</tr>
									</c:forEach>


								</tbody>
							</table>
						</c:if>
						<!-- TABLE -->
						<br>
					</div>
				</div>
			</div>

		</div>
</body>
</html>