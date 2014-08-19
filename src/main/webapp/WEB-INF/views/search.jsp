<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="resources/js/request.js"></script>
<script type="text/javascript" src="resources/js/daterangepicker.js"></script>
<link rel="stylesheet" type="text/css"
	href="resources/css/daterangepicker-bs3.css">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<h1
					style="padding-top: 50px; border-bottom-style: solid; border-color: #EEEEEE; border-width: 5px">
					Search <small>Find your hostel</small>
				</h1>
			</div>
		</div>
		<form:form method="get" action="searchhosts" commandName="host">
			<div class="row">
				<div class="col-md-8">
					<p>Select date range you want to search</p>
						<input name="timeRange" type="text" class="form-control pull-right"
						id="reservationtime"/>
						<div class="checkbox_cnt">
							<label><h4>Select special requirements:</h4></label>

							<div class="left" style="float: right; width: 77%">
								<div class="checkbox">
									<input type="checkbox"> <label>Men</label>
								</div>
								<div class="checkbox">
									<input type="checkbox"> <label>Women</label>
								</div>
								<div class="checkbox">
									<c:choose>
										<c:when test="${family eq true}">
											<form:checkbox path="family" value="true" checked="true" />
										</c:when>
										<c:otherwise>
											<form:checkbox path="family" value="true" />
										</c:otherwise>
									</c:choose>
									<label>Family</label>
								</div>
							</div>
							<div class="right" style="float: left; width: 23%">
								<div class="checkbox">
									<c:choose>
										<c:when test="${children eq true}">
											<form:checkbox path="children" value="true" checked="true" />
										</c:when>
										<c:otherwise>
											<form:checkbox path="children" value="true" />
										</c:otherwise>
									</c:choose>

									<label>Children</label>
								</div>
								<div class="checkbox">
									<c:choose>
										<c:when test="${pets eq true}">
											<form:checkbox path="pets" value="true" checked="true" />
										</c:when>
										<c:otherwise>
											<form:checkbox path="pets" value="true" />
										</c:otherwise>
									</c:choose>
									<label>Pets</label>
								</div>
								<div class="checkbox">
									<c:choose>
										<c:when test="${smoking eq true}">
											<form:checkbox path="smoking" value="true" checked="true" />
										</c:when>
										<c:otherwise>
											<form:checkbox path="smoking" value="true" />
										</c:otherwise>
									</c:choose>
									<label>Smoking</label>
								</div>
							</div>
						</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8">
					<div class="row" style="float: left; width: 35%">
						<div class="col-md-8">
							<label><h4>Select Country:</h4></label> <br> <label><h4>Select
									Region:</h4></label> <br> <label><h4>Count of people:</h4></label>
						</div>
						<div class="row" style="float: right; width: 35%">
							<div class="select">
								<form:select path="country" class="select"
									style="margin: 7px 0; width: 100px; height: 25px">
									<c:choose>
                                    						<c:when test="${not empty country}">
                                        						<form:option value="${country}"></form:option>
                                        						<form:option value=""></form:option>
                                        						<form:option value="Ukraine"></form:option>
                                        						<form:option value="USA"></form:option>
                                        						<form:option value="Canada"></form:option>
                                    						</c:when>
                                    						<c:otherwise>
                                        						<form:option value=""></form:option>
                                        						<form:option value="Ukraine"></form:option>
                                        						<form:option value="USA"></form:option>
                                        						<form:option value="Canada"></form:option>
                                    						</c:otherwise>
                                					</c:choose>
								</form:select>
								<br>
								<form:select path="region" class="select"
									style="margin: 10px 0; width: 100px; height: 25px">
									<c:choose>
                                    						<c:when test="${not empty region}">
                                        						<form:option value="${region}"></form:option>
                                        						<form:option value=""></form:option>
                                        						<form:option value="Kyiv"></form:option>
                                        						<form:option value="Lviv"></form:option>
                                        						<form:option value="Kharkiv"></form:option>
                                    						</c:when>
                                    						<c:otherwise>
                                        						<form:option value=""></form:option>
                                        						<form:option value="Kyiv"></form:option>
                                        						<form:option value="Lviv"></form:option>
                                        						<form:option value="Kharkiv"></form:option>
                                    						</c:otherwise>
                                					</c:choose>
								</form:select>
								<br>
								<form:select path="maxNumberOfGuests" class="select"
									style="margin: 12px 0; width: 100px; height: 25px">
									<c:choose>
                                						<c:when test="${not empty count}">
                                    							<form:option value="${count}"></form:option>
                                    							<form:option value=""></form:option>
                                    							<form:option value="1"></form:option>
                                    							<form:option value="2"></form:option>
                                    							<form:option value="3"></form:option>
                                    							<form:option value="4"></form:option>
                                    							<form:option value="5"></form:option>
                                    							<form:option value="6"></form:option>
                                    							<form:option value="7"></form:option>
                                    							<form:option value="8"></form:option>
                                    							<form:option value="9"></form:option>
                                    							<form:option value="10"></form:option>
                                    							<form:option value="11"></form:option>
                                    							<form:option value="12"></form:option>
                                    							<form:option value="13"></form:option>
                                    							<form:option value="14"></form:option>
                                    							<form:option value="15"></form:option>
                                    							<form:option value="16"></form:option>
                                    							<form:option value="17"></form:option>
                                    							<form:option value="18"></form:option>
                                    							<form:option value="19"></form:option>
                                    							<form:option value="20"></form:option>
                                						</c:when>
                                						<c:otherwise>
                                    							<form:option value=""></form:option>
                                    							<form:option value="1"></form:option>
                                    							<form:option value="2"></form:option>
                                    							<form:option value="3"></form:option>
                                    							<form:option value="4"></form:option>
                                    							<form:option value="5"></form:option>
                                    							<form:option value="6"></form:option>
                                    							<form:option value="7"></form:option>
                                    							<form:option value="8"></form:option>
                                    							<form:option value="9"></form:option>
                                    							<form:option value="10"></form:option>
                                    							<form:option value="11"></form:option>
                                    							<form:option value="12"></form:option>
                                    							<form:option value="13"></form:option>
                                    							<form:option value="14"></form:option>
                                    							<form:option value="15"></form:option>
                                    							<form:option value="16"></form:option>
                                    							<form:option value="17"></form:option>
                                    							<form:option value="18"></form:option>
                                    							<form:option value="19"></form:option>
                                    							<form:option value="20"></form:option>
                                						</c:otherwise>
                            						</c:choose>
								</form:select>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-8" style="margin-top: 20px;">
					<div class="bottom">
						<input type="submit" value="Search" />
						</button>
					</div>
				</div>
			</div>
		</form:form>

		<div class="row">
			<div class="col-md-8" style="margin-bottom: 30px; margin-top: 35px;">
				<c:if test="${!empty hostsList}">
					<table class="table table-hover">
						<thead>
							<tr style="background-color: #f9f9f9">
								<th>Country</th>
								<th>Region</th>
								<th>City</th>
								<th>Address</th>
								<th>Hoster</th>
							</tr>
						</thead>
						<c:forEach items="${hostsList}" var="hosting">
							<tr>
								<td>${hosting.country}</td>
								<td>${hosting.region}</td>
								<td>${hosting.city}</td>


								<td><a
									href="<c:url value="hosting?hostingId=${hosting.hostingId}&&userId=${hosting.owner.userId}" />">${hosting.address}</a></td>
								<td><a
									href="<c:url value='hoster?hosterId=${hosting.owner.userId }' />">${hosting.owner.firstName}
										${hosting.owner.lastName}</a></td>
								<td>
									<button id="a" class="btn btn-primary"
										onclick="sendRequest(${hosting.hostingId},this)">Send
										Request</button>

								</td>
							</tr>
						</c:forEach>
					</table>
				</c:if>

			</div>
		</div>
	</div>
</body>
</html>
