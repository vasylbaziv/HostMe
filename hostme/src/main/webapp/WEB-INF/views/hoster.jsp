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
        </section> <!-- Main content --> <section class="content">

        <div class="container">

            <div class="col-md-7">
                <!-- general form elements -->
                <div class="box box-primary">

                    <div class="box-header">
                        <h3 class="box-title">Hoster information</h3>
                    </div>

                    <div class="box-body">

                        <div class="form-group row">
                            <div class="col-md-8">
                                <div class="row col-md-12"
                                    style="padding-bottom: 5px">
                                    <h4>
                                        <strong>${User.firstName}
                                            ${User.lastName}</strong>
                                    </h4>
                                </div>

                                <div class="row"
                                    style="padding-bottom: 5px">
                                    <div class="col-md-3">Languages:</div>
                                    <div class="col-md-9 selected">Ukrainian,
                                        English, Polish</div>
                                </div>

                                <div class="row"
                                    style="padding-bottom: 5px">
                                    <div class="col-md-3">E-mail:</div>
                                    <div class="col-md-9 selected">${User.email}</div>
                                </div>

                                <div class="row">
                                    <div class="col-md-3">Rank:</div>
                                    <div class="col-md-9 selected">
                                        <span>&#9733;</span> <span>&#9733;</span>
                                        <span>&#9733;</span> <span>&#9734;</span>
                                        <span>&#9734;</span>
                                    </div>
                                </div>

                            </div>

                            <div class="col-md-4">
                                <img src="resources/images/john.jpg"
                                    style="width: 150px; float: right"></img>
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
                                    <th>Rank</th>
                                </tr>
                                <tr>
                                    <td>Ukraine</td>
                                    <td>Lviv</td>
                                    <td>Lviv</td>
                                    <td><a href="hostel.html">${UserHostings.address}</a></td>
                                    <td>*****</td>
                                </tr>
                                <tr>
                                    <td>Germany</td>
                                    <td>Bavaria</td>
                                    <td>Munich</td>
                                    <td><a href="hostel.html">11
                                            Stuttgarter Street</a></td>
                                    <td>***</td>
                                </tr>
                            </table>
                        </div>

                    </div>
                    <!-- /.box-body -->

                    <div class="box-footer">
                        <div>
                            <button id="readFeedbacks" type="submit"
                                class="btn btn-primary">Read
                                feedbacks</button>
                        </div>
                    </div>

                </div>
            </div>
        </section> <!-- /.content --> </aside>
    </div>


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
</body>
</html>