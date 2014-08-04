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
        <div class="row">
            <div class="col-md-8">
                <h1
                    style="padding-top: 50px; border-bottom-style: solid; border-color: #EEEEEE; border-width: 5px">Edit
                    your profile</h1>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-sm-2">
                <h4>Login</h4>
            </div>
            <div class="col-sm-5">
                <div class="bs-example">
                    <form role="form">
                        <input class="form-control" id="disabledInput"
                            type="text" placeholder="bigcat" disabled>
                    </form>
                    <small> You can't change your login!</small>
                </div>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-sm-2">
                <h4>First Name</h4>
            </div>
            <div class="col-sm-5">
                <div class="bs-example">
                    <form role="form">
                        <input class="form-control" id="focusedInput"
                            type="text" value="Nina">
                    </form>
                    <small>Enter your first name (given name).</small>
                </div>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-sm-2">
                <h4>Last Name</h4>
            </div>
            <div class="col-sm-5">
                <div class="bs-example">
                    <form role="form">
                        <input class="form-control" id="focusedInput"
                            type="text" value="Dobrev">
                    </form>
                    <small>Enter your last name (family name).</small>
                </div>
            </div>
        </div>
        <br />

        <div class="row">
            <div class="form-group">
                <label for="gender" class="col-sm-2 control-label"><h4>Gender</h4>
                </label>
                <div class="col-lg-1">
                    <div class="input-group">
                        <label for="female"
                            class="col-sm-1 control-label">
                            Female</label> <span class="input-group-addon">
                            <input id="female" type="radio"
                            name="gender" value="female">
                        </span> <label for="male"
                            class="col-sm-1 control-label"> Male</label>
                        <span class="input-group-addon"> <input
                            id="male" type="radio" name="gender"
                            value="male">
                        </span>

                    </div>
                </div>
            </div>

        </div>

        <div class="row">
            <div class="col-sm-2">
                <h4>Email</h4>
            </div>
            <div class="col-sm-5">
                <div class="bs-example">
                    <form role="form">
                        <input class="form-control" id="disabledInput"
                            type="text"
                            placeholder="ninadobrev@gmail.com" disabled>
                    </form>
                    <small> You can <a class="btn-small"
                        href="#myModal" data-toggle="modal">change
                            your email address here.</a>
                    </small>
                </div>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="form-group">
                <label for="dateOfBirth" class="col-sm-2 control-label"><h4>Date
                        of Birth</h4> </label>
                <div class="col-sm-5">
                    <input name="dateOfBirth" type="text"
                        class="form-control" pattern="MM/dd/yyyy"
                        id="dateOfBirth" placeholder="MM/dd/yyyy">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-5">
                <br /> <a href="<c:url value='profile' />"
                    class="btn btn-primary button">Update profile</a>
            </div>
        </div>
    </div>
</body>
</html>