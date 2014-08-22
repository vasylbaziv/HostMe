<%@ page language="java" contentType="text/html; charset=Utf-8"
	pageEncoding="Utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="resources/css/dataTables.bootstrap.css" rel="stylesheet"
	type="text/css" />
<script src="resources/js/jquery.dataTables.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {

		$("#request_table_obtain").dataTable({
			"aLengthMenu": [[100, 200, 300], [100, 200, 300]],
			"sAjaxDataProp":"",
			"bProcessing" : false,
			"bServerSide" : false,
			"sAjaxSource" : "request-sent",
			 "aoColumns": [
			               { "mData": "name" },
			               { "mData": "position" },
			               { "mData": "office" },
			               { "mData": "phone" },
			               { "mData": "start_date" },
			               { "mData": "salary" },
			               ]
		});
			               

	});
</script>
<script src="resources/js/dataTables.bootstrap.js"
	type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=Utf-8">
<title>Request history</title>
</head>
<body>

	<section class="content-header">
		<h1>
			Request settings<small>Some configuration</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li><a href="#">Request</a></li>
			<li class="active">Settings</li>
		</ol>
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="row">


			<div class="box">
				<div class="box-header">
					<h3 class="box-title">
						<i class="fa fa-th"></i> Request page
					</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body table-responsive">
					<div class="nav-tabs-custom">
						<ul class="nav nav-tabs pull-right">
							<li class="active"><a href="#request_send" data-toggle="tab">Tab
									1</a></li>
							<li class=""><a href="#request_obtain" data-toggle="tab">Tab
									2</a></li>
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#"> Dropdown <span
									class="caret"></span>
							</a>
								<ul class="dropdown-menu">
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#">Action</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#">Another action</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#">Something else here</a></li>
									<li role="presentation" class="divider"></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#">Separated link</a></li>
								</ul></li>

						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="request_send">
								<table id="request_table_send"
									class="table table-bordered table-striped">
									<thead>
										<tr>
											<th>Name</th>
											<th>Position</th>
											<th>Office</th>
											<th>Phone</th>
											<th>Start Date</th>
											<th>Salary</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Other browsers</td>
											<td>All others</td>
											<td>-</td>
											<td>-</td>
											<td>U</td>
										</tr>
									</tbody>
									<tfoot>
										<tr>
											<th>Name</th>
											<th>Position</th>
											<th>Office</th>
											<th>Phone</th>
											<th>Start Date</th>
											<th>Salary</th>
										</tr>
									</tfoot>
								</table>

							</div>
							<!-- /.tab-pane -->
							<div class="tab-pane" id="request_obtain">
								<table id="request_table_obtain"
									class="table table-bordered table-striped">
									<thead>
										<tr>
											<th>Name</th>
											<th>Position</th>
											<th>Office</th>
											<th>Phone</th>
											<th>Start Date</th>
											<th>Salary</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Other browsers</td>
											<td>All others</td>
											<td>-</td>
											<td>-</td>
											<td>U</td>
										</tr>
									</tbody>
									<tfoot>
										<tr>
											<th>Name</th>
											<th>Position</th>
											<th>Office</th>
											<th>Phone</th>
											<th>Start Date</th>
											<th>Salary</th>
										</tr>
									</tfoot>
								</table>
							</div>
							<!-- /.tab-pane -->
						</div>
						<!-- /.tab-content -->
					</div>

				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->
		</div>
		</div>

	</section>
	<!-- /.content -->

</body>
</html>