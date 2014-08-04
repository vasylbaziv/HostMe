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
    <div class="container">
        <div class="left-side col-md-2"></div>

        <div class="middle-side col-md-8">
            <div class="row">
                <div>
                    <h2
                        style="padding-top: 50px; border-bottom-style: solid; border-color: #EEEEEE; border-width: 5px">
                        Hoster information</h2>
                </div>
            </div>

            <div class="row">
                <div class="col-md-2">
                    <h4>User image</h4>
                </div>
                <div class="col-md-7">
                    <img src="john.jpg"
                        style="width: 200px; margin-top: 10px; margin-bottom: 10px;"></img>
                </div>
            </div>

            <div class="row">
                <div class="col-md-2">
                    <h4>First name</h4>
                </div>
                <div class="col-md-7">
                    <h4 style="color: #4d8dc7">John</h4>
                </div>
            </div>


            <div class="row">
                <div class="col-md-2">
                    <h4>Last name</h4>
                </div>
                <div class="col-md-7">
                    <h4 style="color: #4d8dc7">Snow</h4>
                </div>
            </div>

            <div class="row">
                <div class="col-md-2">
                    <h4>Languages</h4>
                </div>
                <div class="col-md-7">
                    <h4 style="color: #4d8dc7">Ukrainian, English,
                        Polish</h4>
                </div>
            </div>

            <div class="row">
                <div class="col-md-2">
                    <h4>E-mail</h4>
                </div>
                <div class="col-md-7">
                    <h4 style="color: #4d8dc7">
                        <a href="mailto:john.snow@gmail.com">john.snow@gmail.com</a>
                    </h4>
                </div>
            </div>

            <div class="row">
                <div class="col-md-2">
                    <h4>Rank</h4>
                </div>
                <div class="col-md-7">
                    <h4 style="color: #4d8dc7">
                        <div class="rating">
                            <span>&#9733;</span> <span>&#9733;</span> <span>&#9733;</span>
                            <span>&#9734;</span> <span>&#9734;</span>
                        </div>
                    </h4>
                </div>
            </div>


            <br>
            <div class="row col-md-8">
                <h4>Hosting addresses:</h4>
            </div>

            <div class="row col-md-12">

                <table class="table table-hover">
                    <thead>
                        <tr style="background-color: #f9f9f9">
                            <th>Country</th>
                            <th>Region</th>
                            <th>City</th>
                            <th>Address</th>
                            <th>Rank</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Ukraine</td>
                            <td>Lviv</td>
                            <td>Lviv</td>
                            <td><a href="hostel.html">52
                                    V.Velykoho Street</a></td>
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
                    </tbody>
                </table>
            </div>

            <div class="row col-md-12"
                style="padding: 10px 0px 30px 0px;">

                <div class="col-md-2"
                    style="text-align: left; padding-left: 15px; padding-right: 0px;">
                    <button id="feedbacks" type="submit"
                        class="btn btn-primary">Feedbacks</button>
                </div>
            </div>
        </div>
    </div>

    <script src="jquery-2.1.1.js"></script>
    <script src="bootstrap.js"></script>
    <script type="text/javascript">
					$("#feedbacks").on("click", function() {
						window.location = "feedbacks";
					});
				</script>
</body>
</html>