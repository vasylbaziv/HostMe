<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <h1
                    style="padding-top: 50px; border-bottom-style: solid; border-color: #EEEEEE; border-width: 5px">
                Search
                <small>Find your hostel</small>
            </h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8">
            <div class="date">
                <label><h4>Select the date:</h4></label>

                <form action="demo_form.asp">
                    Begin: <input type="date" name="bday"> &nbspEnd: <input
                        type="date" name="bday">
                </form>
            </div>
        </div>
    </div>
    <form:form method="get" action="searchhosts" commandName="host">
        <div class="row">
            <div class="col-md-8">
                <div class="checkbox_cnt">
                    <label><h4>Select special requirements:</h4></label>

                    <div class="left" style="float: right; width: 77%">
                        <div class="checkbox">
                            <input type="checkbox"> <label>Men</label>
                        </div>
                        <div class="checkbox">
                            <input type="checkbox"> <label>Women</label>
                        </div>
                        <div class="checkbox">
                            <form:checkbox path="family" value="true"/> <label>Family</label>
                        </div>
                    </div>
                    <div class="right" style="float: left; width: 23%">
                        <div class="checkbox">
                            <form:checkbox path="children" value="true"/> <label>Children</label>
                        </div>
                        <div class="checkbox">
                            <form:checkbox path="pets" value="true"/> <label>Pets</label>
                        </div>
                        <div class="checkbox">
                            <form:checkbox path="smoking" value="true"/> <label>Smoking</label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8">
                <div class="row" style="float: left; width: 35%">
                    <div class="col-md-8">
                        <label><h4>Select Country:</h4></label> <br> <label><h4>Select
                        Region:</h4></label> <br> <label><h4>Count of people:</h4></label>
                    </div>
                    <div class="row" style="float: right; width: 35%">
                        <div class="select">
                            <form:select path="country" class="select"
                                         style="margin: 7px 0; width: 100px; height: 25px">
                                <form:option value=""></form:option>
                                <form:option value="Ukraine"></form:option>
                                <form:option value="USA"></form:option>
                                <form:option value="Canada"></form:option>
                            </form:select> <br>
                            <form:select path="region" class="select"
                                         style="margin: 10px 0; width: 100px; height: 25px">
                                <form:option value=""></form:option>
                                <form:option value="Kyiv"></form:option>
                                <form:option value="Lviv"></form:option>
                                <form:option value="Kharkiv"></form:option>
                            </form:select> <br>
                            <form:select path="maxNumberOfGuests" class="select"
                                         style="margin: 12px 0; width: 100px; height: 25px">
                                <form:option value=""></form:option>
                                <form:option value="1"></form:option>
                                <form:option value="2"></form:option>
                                <form:option value="3"></form:option>
                                <form:option value="4"></form:option>
                                <form:option value="5"></form:option>
                                <form:option value="6"></form:option>
                                <form:option value="7"></form:option>
                                <form:option value="8"></form:option>
                                <form:option value="9"></form:option>
                                <form:option value="10"></form:option>
                                <form:option value="11"></form:option>
                                <form:option value="12"></form:option>
                                <form:option value="13"></form:option>
                                <form:option value="14"></form:option>
                                <form:option value="15"></form:option>
                                <form:option value="16"></form:option>
                                <form:option value="17"></form:option>
                                <form:option value="18"></form:option>
                                <form:option value="19"></form:option>
                                <form:option value="20"></form:option>
                            </form:select>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-8" style="margin-top: 20px;">
                <div class="bottom">
                    <input type="submit" value="Search">Search</button>
                </div>
            </div>
        </div>
    </form:form>

    <div class="row">
        <div class="col-md-8" style="margin-bottom: 30px; margin-top: 35px;">
            <c:if test="${!empty hostsList}">
                <table class="table table-hover">
                    <thead>
                    <tr style="background-color: #f9f9f9">
                        <th>Country</th>
                        <th>Region</th>
                        <th>City</th>
                        <th>Address</th>
                        <th>Hoster</th>
                    </tr>
                    </thead>
                    <c:forEach items="${hostsList}" var="hosting">
                        <tr>
                            <td>${hosting.country}</td>
                            <td>${hosting.region}</td>
                            <td>${hosting.city}</td>

                            <td><a href="<c:url value="hosting?hostingId=6&&userId=2" />">${hosting.address}</a></td>
                            <td>
                                <a href="<c:url value='hoster?hosterId=2' />">${hosting.owner.firstName} ${hosting.owner.lastName}</a>
                            </td>
                            <td>
                                <button class="btn btn-success" onclick="test()">Send
                                    Request
                                </button>
                                <div class="btn">Some div</div>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </c:if>

        </div>
    </div>
</div>
<script type="text/javascript">
    function test() {
        var a = $('.btn-success').parent().siblings('td:has(a)').eq(0);
        var b = a.children().attr('href');
        alert(b.replace('hosting?userId=', ""));

        var a = $('.btn-success').parent().siblings('td:has(a)').eq(1);
        var b = a.children().attr('href');
        alert(b.replace('hoster?userId=', ""));
    }
</script>
</body>
</html>