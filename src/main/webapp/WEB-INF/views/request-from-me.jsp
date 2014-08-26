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
		
	
		

		$("#request_table_sent").dataTable({
			
		
			"sAjaxDataProp":"",
			"fnRowCallback": function( nRow, aData, iDisplayIndex, iDisplayIndexFull ) {
				var successRequest = $("<button/>", {
					text : "Accept request",
					"class" : "btn btn-primary btn-sm",
					
				});
				var currentDate = new Date();
				if(aData.endDate>	currentDate.getMilliseconds()){
				$('td:eq(6)', nRow).html(successRequest).click(function(){
					console.log(aData.requestId);
			        });
				}
			      
			    },
		  
			"bProcessing" : false,
			"bServerSide" : false,
			"sAjaxSource" : "request-sent-history",
			 "aoColumns": [
			               { "mData": "beginDate",
			            	   "mRender": function(data,tupe,full){
			            	   return new Date(data).toLocaleString().split(" ")[0];
			            	   }
			               },
			               { "mData": "endDate",
			            	   "mRender": function(data,tupe,full){
				            	   return new Date(data).toLocaleString().split(" ")[0];
				            	   }   
			               },
			               { "mData": "notes" },
			               { "mData": "status" },
			               {"mData":"hosting",
			            	   "mRender" : function(data, type, full) {
			   					return '<a href=${pageContext.request.contextPath}/hosting?hostingId='+data.hostingId+'>'+data.address+'</a>';
			   				}
			               },
			   				{ "mData": "requestId" }
			   				
			               
			               
			              
			               
			               
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
				<table id="request_table_sent"
									class="table table-bordered table-striped">
									<thead>
										<tr>
											<th>From</th>
											<th>Till</th>
											<th>Notes</th>
											<th>Start Date</th>
											<th>Hosting</th>
											<th>Action</th>
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
											<th>From</th>
											<th>Till</th>
											<th>Notes</th>
											<th>Start Date</th>
											<th>Hosting</th>
											<th>Action</th>
										</tr>
									</tfoot>
								</table>
				

								
								
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