<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security"
    uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<meta
    content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
    name='viewport'>
            <security:authorize access="isAuthenticated()">
<aside class="left-side sidebar-offcanvas">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

            <!-- Sidebar user panel -->
            <div class="user-panel">

                <div class="pull-left image">

                    <img src="resources/images/user-avatar.jpg"
                        class="img-circle" alt="User Image">

                </div>

                <div class="pull-left info">

                    <p>
                        <a href="profile">${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.username}</a>
                    </p>

                    <a href="#"><i class="fa fa-circle text-success"></i>
                        Online</a>
                </div>

            </div>
            <!-- search form -->
            <form action="#" method="get" class="sidebar-form">
                <div class="input-group">
                    <input type="text" name="q" class="form-control"
                        placeholder="Search..."> <span
                        class="input-group-btn">
                        <button type="submit" name="seach"
                            id="search-btn" class="btn btn-flat">
                            <i class="fa fa-search"></i>
                        </button>
                    </span>
                </div>
            </form>
            <!-- /.search form -->
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu">


                <security:authorize access="! isAuthenticated()">
                    <li><a href="<c:url value='login' />"
                        style="margin-left: 10px;"><i
                            class="fa fa-key"></i>Login</a></li>
                </security:authorize>

                <security:authorize access="! isAuthenticated()">
                    <li><a href="#" data-toggle="modal"
                        data-target="#registrationModal"
                        style="margin-left: 10px;"><i
                            class="fa fa-gear"></i> Register</a></li>
                </security:authorize>

                <security:authorize access="isAuthenticated()">
                    <li><a href='<c:url value="search"/>'
                        style="margin-left: 10px;"><i
                            class="fa fa-search"></i>Search hosts</a></li>
                </security:authorize>

                <security:authorize access="isAuthenticated()">
                    <li><a href='<c:url value="profile"/>'
                        style="margin-left: 10px;"><i
                            class="fa fa-male"></i>My profile</a></li>
                </security:authorize>

                <security:authorize access="isAuthenticated()">
                    <li><a href='<c:url value="request"/>'
                        style="margin-left: 10px;"><i
                            class="fa fa-question-circle"></i>Request
                            history</a></li>
                </security:authorize>

                <security:authorize access="isAuthenticated()">
                    <li><a href='<c:url value="logout"/>'
                        style="margin-left: 10px;"><i
                            class="fa fa-sign-out"></i>Logout</a></li>
                </security:authorize>
       
    </section>
    <!-- /.sidebar -->
</aside>
 </security:authorize>
</html>