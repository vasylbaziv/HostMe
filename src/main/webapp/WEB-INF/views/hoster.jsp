<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="min-height: 682px;">
<head>
<link rel="stylesheet" type="text/css" href="resources/css/AdminLTE.css">
</head>
<body> 
    
    <section class="content-header">
    <h1>
        Hoster information
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
    </ol>
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
                                <strong>${user.firstName}
                                    ${user.lastName}</strong>
                            </h4>
                        </div>

                        <div class="row" style="padding-bottom: 5px">
                            <div class="col-md-3">Languages:</div>
                            <div class="col-md-9 selected">
                                <c:forEach items="${user.languages}"
                                    var="languages" varStatus="loop">


                                    <c:out value="${languages.language}">
                                    </c:out>
                                    <c:if test="${!loop.last}">, </c:if>

                                </c:forEach>
                            </div>
                        </div>

                        <div class="row" style="padding-bottom: 5px">
                            <div class="col-md-3">E-mail:</div>
                            <div class="col-md-9 selected">${user.email}</div>
                        </div>

                    </div>

                    <div class="col-md-6">
                        <img src="resources/images/john.jpg"
                            style="width: 150px; float:right"></img>
                    </div>

                </div>

                <div class="row">
                    <h4 class="col-md-8">Hosting addresses:</h4>
                </div>


                <div>
                    <table class="table table-bordered">
                        <tr>
                            <th>Country</th>
                            <th>Region</th>
                            <th>City</th>
                            <th>Address</th>
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

            <div class="box-footer">
                <div>
                    <button id="readFeedbacks" type="submit"
                        class="btn btn-primary">Read feedbacks</button>
                </div>
            </div>

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
<script type="text/javascript">
	$("#readFeedbacks").on("click", function() {
		window.location = "feedbacks";
	});
</script>
</html>