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

        <div class="middle-side col-md-9">
            <div class="row">
                <div>
                    <h2
                        style="padding-top: 50px; border-bottom-style: solid; border-color: #EEEEEE; border-width: 5px">
                        Hostel information</h2>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <img src="resources/images/hostel1sm.jpg"
                        style="margin-top: 10px; margin-bottom: 10px;"></img>
                    <img src="resources/images/hostel2sm.jpg"
                        style="margin: 10px 0px 10px 20px;"></img>
                </div>
            </div>

            <div class="row" style="margin-top: 15px;">
                <div class="col-md-3">
                    <h4>
                        <b>Hoster</b>
                    </h4>
                </div>
                <div class="col-md-7">
                    <h4><a href="hoster.html">John Snow</a></h4>
                </div>
            </div>

            <div class="row">
                <div class="col-md-3">
                    <h4>
                        <b>Address</b>
                    </h4>
                </div>
                <div class="col-md-7">
                    <h4>52 V.Velykoho Street, Lviv, 79053, Ukraine</h4>
                </div>
            </div>

            <div class="row">
                <div class="col-md-3">
                    <h4>
                        <b>Number of guests</b>
                    </h4>
                </div>
                <div class="col-md-7">
                    <h4>1 - 4</h4>
                </div>
            </div>

            <div class="row">
                <div class="col-md-3">
                    <h4>
                        <b>Guest types</b>
                    </h4>
                </div>
                <div class="col-md-7">
                    <h4>Men, Women, Children</h4>
                </div>
            </div>


            <div class="row">
                <div class="col-md-3">
                    <h4>
                        <b>Smoking</b>
                    </h4>
                </div>
                <div class="col-md-7">
                    <h4>Allowed</h4>
                </div>
            </div>

            <div class="row">
                <div class="col-md-3">
                    <h4>
                        <b>Family</b>
                    </h4>
                </div>
                <div class="col-md-7">
                    <h4>Yes</h4>
                </div>
            </div>

            <div class="row">
                <div class="col-md-3">
                    <h4 style="margin-top: 18px;">
                        <b>Check availability</b>
                    </h4>
                </div>
                <div class="col-md-9">
                    <h4>
                        From <input type="date" name="availability">
                        To <input type="date" name="availability">
                        <button id="avail" type="submit"
                            class="btn btn-default"
                            style="margin-left: 10px; margin-bottom: 3px;">Check</button>
                    </h4>
                </div>
            </div>


            <div class="row col-md-12"
                style="padding: 10px 0px 30px 0px;">

                <div class="col-md-3"
                    style="text-align: left; padding-left: 15px; padding-right: 0px;">
                    <button type="submit" class="btn btn-primary">Send
                        Request</button>
                </div>
                <br>

            </div>
        </div>

    </div>
</body>
</html>