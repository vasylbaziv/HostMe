<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="option" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="resources/js/request.js"></script>
<script type="text/javascript" src="resources/js/daterangepicker.js"></script>
<script type="text/javascript" src="resources/js/search.js"></script>
<script type="text/javascript" src="resources/js/countries.js"></script>
<script type="text/javascript" src="resources/js/jput.min.js"></script>
<title>Search</title>
<link rel="stylesheet" type="text/css"
	href="resources/css/daterangepicker-bs3.css">
</head>
<body>
	<section class="content-header">
	<h1>
		Search <small>Find your hostel</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active">Dashboard</li>
	</ol>
	</section>
	<section class="content">
	<div class="row">
		<form id="myForm" method="get" action="searchhosts">
			<div class="row">
				<div class="col-md-8">
					<p>Select date range you want to search</p>
					<input name="timeRange" type="text" class="form-control pull-right"
						id="reservationtime" />
					<div class="checkbox_cnt">
						<label><h4>Select special requirements:</h4></label>

						<div class="radio">
                            				<label>
                                				<input type="radio" name="optionsRadios" id="female" value="FEMALE">
                                				Only women
                            				</label>
                        			</div>
                        			<div class="radio">
                            				<label>
                                				<input type="radio" name="optionsRadios" id="male" value="MALE">
                                				Only men
                            				</label>
                        			</div>
                        			<div class="radio">
                            				<label>
                                				<input type="radio" name="optionsRadios" id="optionsRadios3" value="UNSPECIFIED" checked="checked">
                                				Both
                            				</label>
                        			</div>
                        			<div class="checkboxes">
						<div class="left" style="float: right; width: 77%">
							<div class="checkbox">
                                    				<input type="checkbox" id="children">
                                    				<label>Children</label>
                                			</div>
                                			<div class="checkbox">
                                    				<input type="checkbox" id="family">
                                    				<label>Family</label>
                                			</div>
                            			</div>
						<div class="right" style="float: left; width: 23%">
							<div class="checkbox">
                                    				<input type="checkbox" id="pets">
                                    				<label>Pets</label>
                                			</div>
                                			<div class="checkbox">
                                    				<input type="checkbox" id="smoking">
                                    				<label>Smoking</label>
                                			</div>
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
                                				<select class="select" id="country"
                                        				style="margin: 7px 0; width: 100px; height: 25px"
                                        				name="country"
                                        				onclick="print_state('region',this.selectedIndex);"
                                        				onchange="print_state('region',this.selectedIndex);"
                                        				>
                                					<option></option>
                                				</select>
                                				<br>
                                				<select class="select" id="region"
                                        				style="margin: 10px 0; width: 100px; height: 25px"
                                        				>
                                    					<option></option>
                                				</select>


                                				<br>
                                				<select class="select" id="count"
                                        				style="margin: 12px 0; width: 100px; height: 25px">
                                    					<option></option>
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
						<input type="submit" value="Search"/>
					</div>
				</div>
			</div>
			<div id="searchhosts"></div>
        	</form>
	</div>
		<table id="searchTable" class="table table-hover" style="display:none">
        <thead>
        <tr style="background-color: #f9f9f9">
            <th>Country</th>
            <th>Region</th>
            <th>City</th>
            <th>Address</th>
            <th>Hoster</th>
        </tr>
        </thead>
    </table>

    <div class="pagination inline" id="pagination">
        <form id="myFormPagePrevious" method="get" action="/searchhosts" style="display: inline">
            <input type="submit" id="previousPage" value="&laquo Previous page"
                   style="display: none"/>
        </form>
        <form id="myFormPageNext" method="get" action="/searchhosts" style="display: inline">
            <input type="submit" id="nextPage" value="Next Page &raquo"
                   style="display: none"/>
        </form>
        <div id="currentPage" style="display: inline"></div>
    </div>
    </div>
	</section>
	<script src="jquery-2.1.1.js"></script>
<script src="bootstrap.js"></script>
<script type="text/javascript">
    $('#myModal').modal('show');
</script>
<script language="javascript">
    print_country("country");
</script>
</body>
</html>
