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
                    style="padding-top: 50px; border-bottom-style: solid; border-color: #EEEEEE; border-width: 5px">
                    Search <small>Find your hostel</small>
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8">
                <div class="date">
                    <label><h4>Select the date:</h4></label>

                    <form action="demo_form.asp">
                        Begin: <input type="date" name="bday">
                        &nbspEnd: <input type="date" name="bday">
                    </form>
                </div>
            </div>
        </div>
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
                            <input type="checkbox"> <label>Family</label>
                        </div>
                    </div>
                    <div class="right" style="float: left; width: 23%">
                        <div class="checkbox">
                            <input type="checkbox"> <label>Children</label>
                        </div>
                        <div class="checkbox">
                            <input type="checkbox"> <label>Pets</label>
                        </div>
                        <div class="checkbox">
                            <input type="checkbox"> <label>Smoking</label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8">
                <div class="row" style="float: left; width: 35%">
                    <div class="col-md-8">
                        <label><h4>Select Country:</h4></label> <br>
                        <label><h4>Select Region:</h4></label> <br>
                        <label><h4>Count of people:</h4></label>
                    </div>
                    <div class="row" style="float: right; width: 35%">
                        <div class="select">
                            <select class="select"
                                style="margin: 7px 0; width: 100px; height: 25px">
                                <option>Ukraine</option>
                                <option>USA</option>
                                <option>Canada</option>
                            </select> <br> <select class="select"
                                style="margin: 10px 0; width: 100px; height: 25px">
                                <option>Kyiv</option>
                                <option>Lviv</option>
                                <option>Kharkiv</option>
                            </select> <br> <select class="select"
                                style="margin: 12px 0; width: 100px; height: 25px">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                                <option>11</option>
                                <option>12</option>
                                <option>13</option>
                                <option>14</option>
                                <option>15</option>
                                <option>16</option>
                                <option>17</option>
                                <option>18</option>
                                <option>19</option>
                                <option>20</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-8" style="margin-top: 20px;">
                <div class="bottom">
                    <button type="button" class="btn btn-primary">Search</button>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-8"
                style="margin-bottom: 30px; margin-top: 35px;">
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
                    <tr>
                        <td>Ukraine</td>
                        <td>Lviv</td>
                        <td>Lviv</td>

                        <td><a href="<c:url value='hostel' />">52
                                V.Velykoho Street</a></td>
                        <td><a href="<c:url value='hoster' />">John
                                Snow</a></td>
                    </tr>
                </table>

            </div>
        </div>
    </div>
</body>
</html>