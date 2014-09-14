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
<body>

    <section class="content-header">
        <h1>
            <spring:message code="label.hosterInformation" />
        </h1>
    </section>

    <section class="content">
        <div>
            <!-- general form elements -->
            <div class="box box-primary">

                <div class="box-body">

                    <div class="row">
                        <div class="col-md-6">
                            <div class="row col-md-12"
                                style="padding-bottom: 5px">
                                <h4>
                                    <strong>${user.firstName}&nbsp;${user.lastName}</strong>
                                </h4>
                            </div>

                            <div class="row" style="padding-bottom: 5px">
                                <div class="col-md-2"
                                    style="padding-right: 0em;">
                                    <spring:message
                                        code="label.languages" />
                                    :
                                </div>
                                <div class="col-md-10 selected">
                                    <c:forEach items="${user.languages}"
                                        var="languages" varStatus="loop">


                                        <c:out
                                            value="${languages.language}">
                                        </c:out>
                                        <c:if test="${!loop.last}">, </c:if>

                                    </c:forEach>
                                </div>
                            </div>

                            <div class="row" style="padding-bottom: 5px">
                                <div class="col-md-2"
                                    style="padding-right: 0em;">
                                    <spring:message code="label.email" />
                                    :
                                </div>
                                <div class="col-md-10 selected">${user.email}</div>
                            </div>

                        </div>

                    </div>

                    <div class="row">
                        <h4 class="col-md-8">
                            <spring:message
                                code="label.hostingAddresses" />
                            :
                        </h4>
                    </div>


                    <div>
                        <table class="table table-bordered">
                            <tr>
                                <th><spring:message
                                        code="label.country" /></th>
                                <th><spring:message
                                        code="label.region" /></th>
                                <th><spring:message
                                        code="label.city" /></th>
                                <th><spring:message
                                        code="label.address" /></th>
                            </tr>
                            <c:forEach var="hosting"
                                items="${user.hostings}">
                                <tr>
                                    <td>${hosting.country}</td>
                                    <td>${hosting.region}</td>
                                    <td>${hosting.city}</td>
                                    <td><a
                                        href=<c:url value="hosting?hostingId=${hosting.hostingId}&&userId=${user.userId}"/>>${hosting.address}</a></td>
                                </tr>
                            </c:forEach>

                        </table>
                    </div>

                </div>
                <!-- /.box-body -->

            </div>
        </div>
    </section>

</body>


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

<script src="jquery-2.1.1.js"></script>
<script src="bootstrap.js"></script>

</html>