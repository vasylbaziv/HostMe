<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-ex1-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

			<a class="navbar-brand" href="index">Host Me</a>
		</div>

		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="about.html">About</a></li>
				</li>
				

				<li><a href="<c:url value='registration' />"> Registration</a></li>
                <li><a href="<c:url value='search' />"> Search</a></li>
                <li><a href="<c:url value='profile' />"> Profile</a></li>
				<li><a href="<c:url value='login' />">Login</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Help <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="portfolio-1-col.html">How to do this</a></li>
						<li><a href="portfolio-2-col.html">How to do that</a></li>
						<li><a href="portfolio-3-col.html">How to do</a></li>
						<li><a href="portfolio-4-col.html">How to do nothing</a></li>

					</ul></li>
			</ul>
		</div>

	</div>

</nav>
