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
<aside class="left-side sidebar-offcanvas">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">

				<img src="../../img/avatar3.png" class="img-circle" alt="User Image">
			</div>
			<div class="pull-left info">
				<p>Hello, Jane</p>

				<img src="resources/images/user-avatar.jpg" class="img-circle"
					alt="User Image">
			</div>
			<div class="pull-left info">
				<p>
					<a href="profile">${sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.username}</a>
				</p>

				<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
			</div>
		</div>
		<!-- search form -->
		<form action="#" method="get" class="sidebar-form">
			<div class="input-group">
				<input type="text" name="q" class="form-control"
					placeholder="Search..."> <span class="input-group-btn">
					<button type="submit" name="seach" id="search-btn"
						class="btn btn-flat">
						<i class="fa fa-search"></i>
					</button>
				</span>
			</div>
		</form>
		<!-- /.search form -->
		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li><a href="../../index.html"> <i class="fa fa-dashboard"></i>
					<span>Dashboard</span>
			</a></li>
			<li><a href="../widgets.html"> <i class="fa fa-th"></i> <span>Widgets</span>
					<small class="badge pull-right bg-green">new</small>
			</a></li>

			<li class="treeview active"><a href="#"> <i
					class="fa fa-laptop"></i> <span>UI Elements</span> <i
					class="fa pull-right fa-angle-down"></i>
			</a>
				<ul class="treeview-menu" style="display: block;">
					<security:authorize access="! isAuthenticated()">
						<li><a href="<c:url value='login' />"
							style="margin-left: 10px;"><i
								class="fa fa-angle-double-right"></i>Login</a></li>
					</security:authorize>
					<security:authorize access="isAuthenticated()">
						<li><a href='<c:url value="logout"/>'
							style="margin-left: 10px;"><i
								class="fa fa-angle-double-right"></i>Logout</a></li>
					</security:authorize>
					<security:authorize access="! isAuthenticated()">
						<li><a href="#" data-toggle="modal"
							data-target="#registrationModal" style="margin-left: 10px;"><i
								class="fa fa-angle-double-right"></i> Register</a></li>
					</security:authorize>
					<li><a href="icons.html" style="margin-left: 10px;"><i
							class="fa fa-angle-double-right"></i> Icons</a></li>
					<li class="active"><a href="buttons.html"
						style="margin-left: 10px;"><i class="fa fa-angle-double-right"></i>
							Buttons</a></li>
					<li><a href="sliders.html" style="margin-left: 10px;"><i
							class="fa fa-angle-double-right"></i> Sliders</a></li>
					<li><a href="timeline.html" style="margin-left: 10px;"><i
							class="fa fa-angle-double-right"></i> Timeline</a></li>
				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-edit"></i>
					<span>Forms</span> <i class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="treeview-menu">
					<li><a href="../forms/general.html" style="margin-left: 10px;"><i
							class="fa fa-angle-double-right"></i> General Elements</a></li>
					<li><a href="../forms/advanced.html"
						style="margin-left: 10px;"><i class="fa fa-angle-double-right"></i>
							Advanced Elements</a></li>
					<li><a href="../forms/editors.html" style="margin-left: 10px;"><i
							class="fa fa-angle-double-right"></i> Editors</a></li>
				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-table"></i>
					<span>Tables</span> <i class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="treeview-menu">
					<li><a href="../tables/simple.html" style="margin-left: 10px;"><i
							class="fa fa-angle-double-right"></i> Simple tables</a></li>
					<li><a href="../tables/data.html" style="margin-left: 10px;"><i
							class="fa fa-angle-double-right"></i> Data tables</a></li>
				</ul></li>
			<li><a href="../calendar.html"> <i class="fa fa-calendar"></i>
					<span>Calendar</span> <small class="badge pull-right bg-red">3</small>
			</a></li>
			<li><a href="../mailbox.html"> <i class="fa fa-envelope"></i>
					<span>Mailbox</span> <small class="badge pull-right bg-yellow">12</small>
			</a></li>
			<li class="treeview"><a href="#"> <i class="fa fa-folder"></i>
					<span>Examples</span> <i class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="treeview-menu">
					<li><a href="../examples/invoice.html"
						style="margin-left: 10px;"><i class="fa fa-angle-double-right"></i>
							Invoice</a></li>
					<li><a href="../examples/login.html"
						style="margin-left: 10px;"><i class="fa fa-angle-double-right"></i>
							Login</a></li>
					<li><a href="../examples/register.html"
						style="margin-left: 10px;"><i class="fa fa-angle-double-right"></i>
							Register</a></li>
					<li><a href="../examples/lockscreen.html"
						style="margin-left: 10px;"><i class="fa fa-angle-double-right"></i>
							Lockscreen</a></li>
					<li><a href="../examples/404.html" style="margin-left: 10px;"><i
							class="fa fa-angle-double-right"></i> 404 Error</a></li>
					<li><a href="../examples/500.html" style="margin-left: 10px;"><i
							class="fa fa-angle-double-right"></i> 500 Error</a></li>
					<li><a href="../examples/blank.html"
						style="margin-left: 10px;"><i class="fa fa-angle-double-right"></i>
							Blank Page</a></li>
				</ul></li>
		</ul>
	</section>
	<!-- /.sidebar -->
</aside>
</html>