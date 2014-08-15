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
						style="margin-top: 10px; margin-bottom: 10px;"></img> <img
						src="resources/images/hostel2sm.jpg"
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
					<h4>
						<a href="<c:url value='hoster?hosterId=${user.userId}' />"><c:out
								value="${user.firstName}"></c:out> ${user.lastName}</a>
					</h4>
				</div>
			</div>

			<div class="row">
				<div class="col-md-3">
					<h4>
						<b>Address</b>
					</h4>
				</div>
				<div class="col-md-7">
					<h4>${hosting.address}</h4>
				</div>
			</div>

			<div class="row">
				<div class="col-md-3">
					<h4>
						<b>Number of guests</b>
					</h4>
				</div>
				<div class="col-md-7">
					<h4>${hosting.minNumberOfGuests }-${hosting.maxNumberOfGuests }</h4>
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
						From <input type="date" name="availability"> To <input
							type="date" name="availability">
						<button id="avail" type="submit" class="btn btn-default"
							style="margin-left: 10px; margin-bottom: 3px;">Check</button>
					</h4>
				</div>
			</div>


			<div class="row col-md-12" style="padding: 10px 0px 30px 0px;">

				<div class="col-md-6">
					<div class="box box-solid">
						<div class="box-header">
							<h3 class="box-title">Wanna send some request,man?</h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<div class="box-group" id="accordion">
								<!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
								<div class="panel box box-primary">
									<div class="box-header">
										<h4 class="box-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseOne" class="collapsed"> Choose your date nigga </a>
										</h4>
									</div>
									<div id="collapseOne" class="panel-collapse collapse"
										style="height: 0px;">
										<div class="box-body"><div class="form-group">
                                        <label>Date range:</label>
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                            <input type="text" class="form-control pull-right" id="reservation">
                                        </div><!-- /.input group -->
                                    </div></div>
									</div>
								</div>
								<div class="panel box box-danger">
									<div class="box-header">
										<h4 class="box-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseTwo" class="collapsed"> Collapsible Group
												Danger </a>
										</h4>
									</div>
									<div id="collapseTwo" class="panel-collapse collapse"
										style="height: 0px;">
										<div class="box-body">Anim pariatur cliche
											reprehenderit, enim eiusmod high life accusamus terry
											richardson ad squid. 3 wolf moon officia aute, non cupidatat
											skateboard dolor brunch. Food truck quinoa nesciunt laborum
											eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on
											it squid single-origin coffee nulla assumenda shoreditch et.
											Nihil anim keffiyeh helvetica, craft beer labore wes anderson
											cred nesciunt sapiente ea proident. Ad vegan excepteur
											butcher vice lomo. Leggings occaecat craft beer
											farm-to-table, raw denim aesthetic synth nesciunt you
											probably haven't heard of them accusamus labore sustainable
											VHS.</div>
									</div>
								</div>
								<div class="panel box box-success">
									<div class="box-header">
										<h4 class="box-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseThree" class="collapsed"> Collapsible
												Group Success </a>
										</h4>
									</div>
									<div id="collapseThree" class="panel-collapse collapse"
										style="height: 0px;">
										<div class="box-body">Anim pariatur cliche
											reprehenderit, enim eiusmod high life accusamus terry
											richardson ad squid. 3 wolf moon officia aute, non cupidatat
											skateboard dolor brunch. Food truck quinoa nesciunt laborum
											eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on
											it squid single-origin coffee nulla assumenda shoreditch et.
											Nihil anim keffiyeh helvetica, craft beer labore wes anderson
											cred nesciunt sapiente ea proident. Ad vegan excepteur
											butcher vice lomo. Leggings occaecat craft beer
											farm-to-table, raw denim aesthetic synth nesciunt you
											probably haven't heard of them accusamus labore sustainable
											VHS.</div>
									</div>
								</div>
							</div>
						</div>
						<button class="btn btn-success btn-lg">Send request</button>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
				</div>
				<br>

			</div>
		</div>

	</div>
</body>
</html>