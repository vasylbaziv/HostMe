<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html style="min-height: 682px;">
<head>
<link rel="stylesheet" type="text/css" href="resources/css/AdminLTE.css">
</head>
<body class="wysihtml5-supported">

    <section class="content-header">
        <h1>
            <spring:message code="label.userProfile" />
        </h1>
    </section>

    <!-- Main content -->
    <section class="content">

        <div>
            <div class="box box-primary">

                <div class="box-body">

                    <div class="row">
                        <div class="col-md-3">
                            <div class="row col-md-12"
                                style="padding-bottom: 5px">
                                <h4>
                                    <strong>${user.firstName}&nbsp;${user.lastName}</strong>
                                </h4>
                                <img src="resources/images/nina.jpg"
                                    style="width: 200px; margin-top: 0.5em; margin-bottom: 0.5em"></img>
                            </div>

                            <div class="row col-md-12">
                                <a href="<c:url value='edit-profile' />"
                                    class="btn btn-default btn-sm"
                                    style="width: 200px;"> <spring:message
                                        code="label.editProfile" />
                                </a>
                            </div>
                        </div>

                        <div class="col-md-4" style="padding-left: 0em;">
                            <div class="panel box box-info col-md-12"
                                style="margin-top: 3em;">
                                <div class="box-header">
                                    <h4 class="box-title">General
                                        Information:</h4>
                                </div>

                                <div id="collapseOne"
                                    class="panel-collapse in"
                                    style="height: auto;">
                                    <div class="box-body"
                                        style="padding-bottom: 0.5em">
                                        <div class="row"
                                            style="padding-top: 0.3em; padding-bottom: 0.3em">
                                            <div class="col-md-4">Login:</div>
                                            <div
                                                class="col-md-8 selected">${user.login}</div>
                                        </div>

                                        <div class="row"
                                            style="padding-bottom: 0.3em">
                                            <div class="col-md-4">Gender:</div>
                                            <div
                                                class="col-md-8 selected">
                                                <c:out
                                                    value="${user.gender == 'FEMALE' ? 'female': 'male'}" />
                                            </div>
                                        </div>

                                        <div class="row"
                                            style="padding-bottom: 0.3em">
                                            <div class="col-md-4">Age:</div>
                                            <div
                                                class="col-md-8 selected">${age}</div>
                                        </div>

                                        <div class="row"
                                            style="padding-bottom: 0.3em">
                                            <div class="col-md-4">Birthday:</div>
                                            <div
                                                class="col-md-8 selected">${birth}</div>
                                        </div>

                                        <div class="row"
                                            style="padding-bottom: 0.3em">
                                            <div class="col-md-4">Languages:</div>
                                            <div
                                                class="col-md-8 selected">
                                                <c:forEach
                                                    items="${user.languages}"
                                                    var="languages"
                                                    varStatus="loop">

                                                    <c:out
                                                        value="${languages.language}">
                                                    </c:out>
                                                    <c:if
                                                        test="${!loop.last}">, </c:if>

                                                </c:forEach>
                                            </div>
                                        </div>

                                        <div class="row"
                                            style="padding-bottom: 0.3em">
                                            <div class="col-md-4">E-mail:</div>
                                            <div
                                                class="col-md-8 selected">${user.email}</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-5">
                            <div class="row col-md-12"
                                style="padding-top: 3em;">

                                <div class="callout callout-info">
                                    <h4>Personal Description:</h4>

                                    <p>${user.description}</p>
                                </div>
                                <div class="callout callout-warning">
                                    <h4>Hobby:</h4>
                                    <p>${user.hobby}</p>
                                </div>

                            </div>
                        </div>

                    </div>

                    <div class="row">
                        <div class="col-md-12" style="margin-top: 1em;">
                            <h4>Hosting addresses:</h4>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <table class="table table-bordered">
                                <tr>
                                    <th>Country</th>
                                    <th>Region</th>
                                    <th>City</th>
                                    <th>Address</th>
                                    <th>Manage</th>
                                </tr>
                                <c:forEach var="hosting"
                                    items="${user.hostings}">
                                    <tr>
                                        <td>${hosting.country}</td>
                                        <td>${hosting.region}</td>
                                        <td>${hosting.city}</td>
                                        <td><a
                                            href=<c:url value="hosting?hostingId=${hosting.hostingId}&&userId=${user.userId}"/>>${hosting.address}</a></td>
                                        <td width="200px;"><div class="tools">
                                                <a href="#"
                                                    class="text-green">Edit&nbsp;&nbsp;<span
                                                    class="fa fa-edit" style="margin-right:3em"></span></a>
                                                <a href="#"
                                                    class="text-red">Delete&nbsp;&nbsp;<span
                                                    class="fa fa-trash-o"></span></a>
                                            </div></td>
                                    </tr>
                                </c:forEach>

                            </table>

                            <div style="margin-top: 20px;">

                                <a
                                    href="<c:url value='hosting-creation' />"
                                    class="btn btn-primary button">Add
                                    hosting</a> <br>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </section>
</body>
</html>