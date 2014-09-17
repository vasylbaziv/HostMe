$(function() {
	$('#reservationtime').daterangepicker({
		timePicker : true,
		timePickerIncrement : 30,
		format : 'MM/DD/YYYY h:mm A'
	});

});

function sendRequest(id, element) {
	var dateRange = $('#reservationtime').val().split(' - ');
	var beginDate = Date.parse(dateRange[0]);
	var endDate = Date.parse(dateRange[1]);

	var check = $('<i/>', {
		'class' : "fa fa-check"
	});
	var loader = $(
			"<img/>",
			{
				src : "resources/images/ajax-loader.gif",
				style : "width:30px;  display: block; margin-left: auto; margin-right: auto;"

			});

	var successRequest = $("<p/>", {
		html : "Request is sent",
		"class" : "text-green"
	});
	var failRequest = $("<p/>", {
		html : "Duplicate Request",
		"class" : "text-red"
	});

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
	/*
	 * 
	 * Some selectors for parsing over c:url
	 * 
	 * var a = $('.btn-success').parent().siblings('td:has(a)').eq(0); var b =
	 * a.children().attr('href');
	 * 
	 * 
	 * var a = $('.btn-success').parent().siblings('td:has(a)').eq(1); var b =
	 * a.children().attr('href');
	 */
}
