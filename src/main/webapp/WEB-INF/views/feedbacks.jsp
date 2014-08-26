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

    <section class="content-header">
    <h1>
        Feedbacks for <a
            href="<c:url value='hoster?hosterId=${hosting.owner.userId}' />">${hosting.owner.firstName}&thinsp;${hosting.owner.lastName}</a>'s
        place - <a
            href="<c:url value="hosting?hostingId=${hosting.hostingId}&&userId=${hosting.owner.userId}" />">${hosting.address}</a>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
    </ol>
    </section>

    <section class="content"> <!-- general form elements -->
    <div class="box box-primary">

        <div class="box-body">
            <div class="row">
                <div class="col-md-12" style="margin-top: 1em;">
                    <c:forEach items="${hosting.feedbacks}"
                        var="feedbacks" varStatus="loop">
                        <div class="callout callout-info">
                            <h4>
                                <a href="<c:url value='hoster?hosterId=${feedbacks.author.userId}' />">${feedbacks.author.firstName}&nbsp;${feedbacks.author.lastName}</a></h4>
                            <q style="color: gray"><i><c:out
                                        value="${feedbacks.description}"></c:out></i></q>
                     </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>

    </section>
</body>
</html>