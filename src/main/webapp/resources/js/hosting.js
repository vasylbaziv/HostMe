function formDate(){
	var dateRange=$('#reservationtime').val().split(' - ');
	var beginDate=Date.parse(dateRange[0]);
	var endDate=Date.parse(dateRange[1]);
	$('#beginDate').val(beginDate);
	$('#endDate').val(endDate);
}
	
		$(function() {
			$('#reservationtime').daterangepicker({
				timePicker : true,
				timePickerIncrement : 30,
				format : 'MM/DD/YYYY h:mm A'
			});

			$(".textarea").wysihtml5();

		});
		var geocoder;
		var map;
		function initialize() {
		  geocoder = new google.maps.Geocoder();
		  var latlng = new google.maps.LatLng(-34.397, 150.644);
		  var mapOptions = {
		    zoom: 8,
		    center: latlng
		  }
		  map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
		}

		function codeAddress() {
		  var address = document.getElementById("address").value;
		  geocoder.geocode( { 'address': address}, function(results, status) {
		    if (status == google.maps.GeocoderStatus.OK) {
		      map.setCenter(results[0].geometry.location);
		      var marker = new google.maps.Marker({
		          map: map,
		          position: results[0].geometry.location
		      });
		    } else {
		      alert("Geocode was not successful for the following reason: " + status);
		    }
		  });
		}
		$(document)
		.ready(
				function() {});