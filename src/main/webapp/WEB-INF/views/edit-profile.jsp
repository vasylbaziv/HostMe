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
        <aside class="left-side sidebar-offcanvas"
            style="min-height: 682px;"> <!-- sidebar: style can be found in sidebar.less -->
        </aside>


        <aside class="right-side"> <!-- Content Header (Page header) -->

        <section class="content-header">
        <h1>
            Dashboard <small>Control panel</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>
                    Home</a></li>
            <li class="active">Dashboard</li>
        </ol>
        </section> 
        
        <!-- Main content --> 
        <section class="content">

        <div class="container">

            <div class="col-md-6">
                <!-- general form elements -->
                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">Edit your profile</h3>
                    </div>
                    <!-- form start -->
                    <form role="form">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="inputLogin">Login</label> <input
                                    type="login" class="form-control"
                                    id="inputLogin" placeholder="Login">
                            </div>
                            <div class="form-group">
                                <label for="firstName">First
                                    name</label> <input type="firstName"
                                    class="form-control" id="firstName"
                                    placeholder="First name">
                            </div>
                            <div class="form-group">
                                <label for="lastName">Last name</label>
                                <input type="lastName"
                                    class="form-control" id="lastName"
                                    placeholder="Last name">
                            </div>

                            <div class="form-group">
                                <label for="gender"
                                    style="display: block; float: none">Gender</label>
                                <input id="female" type="radio"
                                    name="gender" value="female"
                                    style="display: block; float: left">
                                <span
                                    style="display: block; float: left; padding-left: 5px; padding-right: 10px">Male</span>
                                <input id="female" type="radio"
                                    name="gender" value="female"
                                    style="display: block; float: left;">
                                <span
                                    style="display: block; float: left; padding-left: 5px; padding-right: 10px">Female</span>
                            </div>

                            <div class="form-group"></div>
                            <br>
                            <div class="form-group">
                                <label for="email">E-mail</label> <input
                                    type="email" class="form-control"
                                    id="email"
                                    placeholder="john.doe@gmail.com"> <small>
                                    You can change your <a
                                    class="btn-small" href="#myModal"
                                    data-toggle="modal">email
                                        address </a> here
                                </small>
                            </div>

                            <div class="form-group">
                                <label for="profilePicture">Profile
                                    picture</label> <input type="file"
                                    id="profilePicture">
                                <p class="help-block">Choose your
                                    profile picture</p>
                            </div>

                            <div class="form-group">
                                <label for="dateOfBirth">Date of
                                    birth</label> <input name="dateOfBirth"
                                    class="form-control"
                                    id="dateOfBirth"
                                    pattern="mm.dd.yyyy"
                                    placeholder="mm.dd.yyyy">

                            </div>

                        </div>
                        <!-- /.box-body -->

                        <div class="box-footer">                      
                            <button type="submit"
                                class="btn btn-primary">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </section> <!-- /.content --> </aside>
    </div>
</body>
</html>