<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="resources/css/daterangepicker-bs3.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap3-wysihtml5.css">
<script type="text/javascript" src="resources/js/daterangepicker.js"></script>
<script type="text/javascript"
	src="resources/js/bootstrap3-wysihtml5.all.min.js"></script>

</head>
<body class="wysihtml5-supported">
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


			<div class="row " style="padding: 10px 0px 30px 0px;">

				<div class="col-md-offset-2 col-md-8">
					<div class="box box-solid">
						<div class="box-header">
							<h3 class="box-title">Wanna send some request,man?</h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<div class="box-group" id="accordion">
								<!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
								<div class="panel box box-success">
									<div class="box-header">
										<h4 class="box-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseOne" class="collapsed"> Choose your date
												nigga </a>
										</h4>
									</div>
									<div id="collapseOne" class="panel-collapse collapse"
										style="height: 0px;">
										<div class="box-body">
											<div class="form-group">
												<label>Date and time range:</label>
												<div class="input-group">
													<div class="input-group-addon">
														<i class="fa fa-clock-o"></i>
													</div>
													<input type="text" class="form-control pull-right"
														id="reservationtime">
												</div>
												<!-- /.input group -->
											</div>
										</div>
									</div>
								</div>
								<div class="panel box box-success">
									<div class="box-header">
										<h4 class="box-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseTwo" class="collapsed"> Some extra
												wishes? </a>
										</h4>
									</div>
									<div id="collapseTwo" class="panel-collapse collapse"
										style="height: 0px;">
										<div class="box">
											<div class="box-header">
												<h3 class="box-title">
													Bootstrap WYSIHTML5 <small>Simple and fast</small>
												</h3>
												<!-- tools box -->
												<div class="pull-right box-tools">
													<button class="btn btn-default btn-sm"
														data-widget="collapse" data-toggle="tooltip" title=""
														data-original-title="Collapse">
														<i class="fa fa-minus"></i>
													</button>
													<button class="btn btn-default btn-sm" data-widget="remove"
														data-toggle="tooltip" title=""
														data-original-title="Remove">
														<i class="fa fa-times"></i>
													</button>
												</div>
												<!-- /. tools -->
											</div>
											<!-- /.box-header -->
											<div class="box-body pad">
												<form>
													<ul class="wysihtml5-toolbar">
														<li class="dropdown"><a
															class="btn btn-default dropdown-toggle "
															data-toggle="dropdown"> <span
																class="glyphicon glyphicon-font"></span> <span
																class="current-font">Normal text</span> <b class="caret"></b>
														</a>
															<ul class="dropdown-menu">
																<li><a data-wysihtml5-command="formatBlock"
																	data-wysihtml5-command-value="div" tabindex="-1"
																	href="javascript:;" unselectable="on">Normal text</a></li>
																<li><a data-wysihtml5-command="formatBlock"
																	data-wysihtml5-command-value="h1" tabindex="-1"
																	href="javascript:;" unselectable="on">Heading 1</a></li>
																<li><a data-wysihtml5-command="formatBlock"
																	data-wysihtml5-command-value="h2" tabindex="-1"
																	href="javascript:;" unselectable="on">Heading 2</a></li>
																<li><a data-wysihtml5-command="formatBlock"
																	data-wysihtml5-command-value="h3" tabindex="-1"
																	href="javascript:;" unselectable="on">Heading 3</a></li>
																<li><a data-wysihtml5-command="formatBlock"
																	data-wysihtml5-command-value="h4" tabindex="-1"
																	href="javascript:;" unselectable="on">Heading 4</a></li>
																<li><a data-wysihtml5-command="formatBlock"
																	data-wysihtml5-command-value="h5" tabindex="-1"
																	href="javascript:;" unselectable="on">Heading 5</a></li>
																<li><a data-wysihtml5-command="formatBlock"
																	data-wysihtml5-command-value="h6" tabindex="-1"
																	href="javascript:;" unselectable="on">Heading 6</a></li>
															</ul></li>
														<li>
															<div class="btn-group">
																<a class="btn  btn-default"
																	data-wysihtml5-command="bold" title="CTRL+B"
																	tabindex="-1" href="javascript:;" unselectable="on">Bold</a>
																<a class="btn  btn-default"
																	data-wysihtml5-command="italic" title="CTRL+I"
																	tabindex="-1" href="javascript:;" unselectable="on">Italic</a>
																<a class="btn  btn-default"
																	data-wysihtml5-command="underline" title="CTRL+U"
																	tabindex="-1" href="javascript:;" unselectable="on">Underline</a>
															</div>
														</li>
														<li>
															<div class="btn-group">
																<a class="btn  btn-default"
																	data-wysihtml5-command="insertUnorderedList"
																	title="Unordered list" tabindex="-1"
																	href="javascript:;" unselectable="on"><span
																	class="glyphicon glyphicon-list"></span></a> <a
																	class="btn  btn-default"
																	data-wysihtml5-command="insertOrderedList"
																	title="Ordered list" tabindex="-1" href="javascript:;"
																	unselectable="on"><span
																	class="glyphicon glyphicon-th-list"></span></a> <a
																	class="btn  btn-default"
																	data-wysihtml5-command="Outdent" title="Outdent"
																	tabindex="-1" href="javascript:;" unselectable="on"><span
																	class="glyphicon glyphicon-indent-right"></span></a> <a
																	class="btn  btn-default"
																	data-wysihtml5-command="Indent" title="Indent"
																	tabindex="-1" href="javascript:;" unselectable="on"><span
																	class="glyphicon glyphicon-indent-left"></span></a>
															</div>
														</li>
														<li>
															<div
																class="bootstrap-wysihtml5-insert-link-modal modal fade">
																<div class="modal-dialog">
																	<div class="modal-content">
																		<div class="modal-header">
																			<a class="close" data-dismiss="modal">×</a>
																			<h3>Insert link</h3>
																		</div>
																		<div class="modal-body">
																			<input value="http://"
																				class="bootstrap-wysihtml5-insert-link-url form-control">
																			<label class="checkbox"> <input
																				type="checkbox"
																				class="bootstrap-wysihtml5-insert-link-target"
																				checked="">Open link in new window
																			</label>
																		</div>
																		<div class="modal-footer">
																			<a class="btn btn-default" data-dismiss="modal">Cancel</a>
																			<a href="#" class="btn btn-primary"
																				data-dismiss="modal">Insert link</a>
																		</div>
																	</div>
																</div>
															</div> <a class="btn  btn-default"
															data-wysihtml5-command="createLink" title="Insert link"
															tabindex="-1" href="javascript:;" unselectable="on">
																<span class="glyphicon glyphicon-share"></span>
														</a>
														</li>
														<li>
															<div
																class="bootstrap-wysihtml5-insert-image-modal modal fade">
																<div class="modal-dialog">
																	<div class="modal-content">
																		<div class="modal-header">
																			<a class="close" data-dismiss="modal">×</a>
																			<h3>Insert image</h3>
																		</div>
																		<div class="modal-body">
																			<input value="http://"
																				class="bootstrap-wysihtml5-insert-image-url form-control">
																		</div>
																		<div class="modal-footer">
																			<a class="btn btn-default" data-dismiss="modal">Cancel</a>
																			<a class="btn btn-primary" data-dismiss="modal">Insert
																				image</a>
																		</div>
																	</div>
																</div>
															</div> <a class="btn  btn-default"
															data-wysihtml5-command="insertImage" title="Insert image"
															tabindex="-1" href="javascript:;" unselectable="on">
																<span class="glyphicon glyphicon-picture"></span>
														</a>
														</li>
													</ul>
													<textarea class="textarea"
														style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid rgb(221, 221, 221); padding: 10px; display: none;"
														placeholder="Place some text here"></textarea>
													<input type="hidden" name="_wysihtml5_mode" value="1">
													<iframe class="wysihtml5-sandbox" security="restricted"
														allowtransparency="true" frameborder="0" width="0"
														height="0" marginwidth="0" marginheight="0"
														style="border-collapse: separate; border: 1px solid rgb(221, 221, 221); clear: none; display: inline-block; float: none; margin: 0px; outline: rgb(0, 0, 0) none 0px; outline-offset: 0px; padding: 10px; position: static; top: auto; left: auto; right: auto; bottom: auto; z-index: auto; vertical-align: top; text-align: start; -webkit-box-shadow: none; box-shadow: none; border-top-right-radius: 0px; border-bottom-right-radius: 0px; border-bottom-left-radius: 0px; border-top-left-radius: 0px; width: 100%; height: 200px; background-color: rgb(255, 255, 255);"></iframe>
												</form>
											</div>
										</div>

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


	<script type="text/javascript">
		$(function() {
			$('#reservationtime').daterangepicker({
				timePicker : true,
				timePickerIncrement : 30,
				format : 'MM/DD/YYYY h:mm A'
			});

			$(".textarea").wysihtml5();

		});
	</script>
</body>
</html>