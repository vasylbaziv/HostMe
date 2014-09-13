	var table;
	var old_data;
	function request_obtain_old(){
		table.fnClearTable();
		table.fnAddData(old_data);
		 
	}
	function initializeRequestToMe() {
		old_data= table.fnGetData();
		console.log(old_data);
		table.fnReloadAjax( 'request-obtain-history' );
	}

	function change_request_status(id, element) {
		$.ajax({
			url : 'response',
			beforeSend : function() {
				console.log('start');
				element.style.display = "none";
				loader.insertAfter(element);

			},
			data : {
				'beginDate' : beginDate,
				'endDate' : endDate,
				hostingId : id,
			},

			success : function(response) {
				element.nextSibling.style.display = "none";
				if (response == "Request send") {
					successRequest.insertAfter(element);

				} else {
					failRequest.insertAfter(element);

				}
			},

		});

	}


	$(document)
			.ready(
					function() {

						table = $("table.table-bordered")
								.dataTable(
										{

											"sAjaxDataProp" : "",
											stateSave : true,
											"fnRowCallback" : function(nRow,
													aData, iDisplayIndex,
													iDisplayIndexFull) {
												var successRequest = $(
														"<button/>",
														{
															text : "Accept request",
															"class" : "btn btn-primary btn-sm",

														});
												var currentDate = new Date();
												if (aData.endDate > currentDate
														.getMilliseconds()) {
													$('td:eq(6)', nRow)
															.html(
																	successRequest)
															.click(
																	function() {
																		console
																				.log(aData.requestId);
																	});
												}

											},

											"bProcessing" : false,
											"bServerSide" : false,
											"sAjaxSource" : "request-sent-history",
											"aoColumns" : [
													{
														"mData" : "beginDate",
														"mRender" : function(
																data, type,
																full) {
															return new Date(
																	data)
																	.toLocaleString()
																	.split(" ")[0];
														}
													},
													{
														"mData" : "endDate",
														"mRender" : function(
																data, type,
																full) {
															return new Date(
																	data)
																	.toLocaleString()
																	.split(" ")[0];
														}
													},
													{
														"mData" : "notes"
													},
													{
														"mData" : "hosting",
														"mRender" : function(
																data, type,
																full) {
															return '<a href=${pageContext.request.contextPath}/hoster?hosterId='
																	+ data.owner.userId
																	+ '>'
																	+ data.owner.firstName
																	+ ' '
																	+ data.owner.lastName
																	+ '</a>';
														}
													},
													{
														"mData" : "status"
													},
													{
														"mData" : "hosting",
														"mRender" : function(
																data, type,
																full) {
															return '<a href=hosting?hostingId='
																	+ data.hostingId
																	+ '>'
																	+ data.address
																	+ '</a>';
														}
													}, {
														"mData" : "requestId"
													}

											]
										});
						

					});