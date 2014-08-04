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
    <div class="container" style="text-align: justify;">

        <div class="row" style="margin-top: 50px">
            <div class="col-md-9">
                <h1
                    style="padding-bottom: 5px; border-bottom-style: solid; border-color: #EEEEEE; border-width: 5px">
                    <small>Feedbacks - <a href="hoster.html">John
                            Snow</a></small>
                </h1>
            </div>
        </div>

        <div class="row" style="margin-bottom: 40px">
            <div class="col-md-8" style="margin-top: 40px">
                <div>
                    <img src="traveller1.jpg"
                        style="width: 100px; float: left; margin: 0px 40px 0px 10px"></img>
                </div>

                <h4>Johnny Doe</h4>
                <q style="color: #BBBBBB"><i>Really enjoyed my
                        stay at this lovely place. Location couldn't be
                        better. Would definitely come back again!</i></q>
            </div>

            <div class="col-md-9" style="margin-top: 40px">
                <div>
                    <img src="traveller2.png"
                        style="width: 100px; float: left; margin: 0px 40px 0px 10px"></img>
                </div>

                <h4>Mary Jane</h4>
                <q style="color: #BBBBBB"><i>I had a wonderful
                        stay at John Snow's place. Beautiful garden and
                        swimming pool, very friendly hosting person.
                        Best regards from New York!</i></q>
            </div>

            <div class="col-md-8" style="margin-top: 40px">
                <div>
                    <img src="traveller4.jpg"
                        style="height: 110px; width: 100px; float: left; margin: 0px 40px 0px 10px"></img>
                </div>

                <h4>Crazy rabbit</h4>
                <q style="color: #BBBBBB"><i>It was an awsome
                        trip. Everything about my stay was great. Lovely
                        place, made to feel very welcome. Thanks!</i></q>
            </div>
        </div>
        <div style="padding-left: 15px; margin-bottom: 50px">
            <button type="submit" class="btn btn-primary">Send
                Feedback</button>
        </div>
    </div>
</body>
</html>