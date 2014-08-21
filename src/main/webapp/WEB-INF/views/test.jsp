<%@ page language="java" contentType="text/html; charset=Utf-8"
	pageEncoding="Utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<style type="text/css">
#map-canvas {
	height: 75%
}
</style>
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBeTVHttkaTOFtn_kgo-JnJ40tIfo3oOIE">
	
</script>
<script type="text/javascript">

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
</script>
</head>
<body onload="initialize();codeAddress()">
	<div class="box box-primary">

		<div class="box-header">
			<h3 class="box-title">Google API</h3>
		</div>

		<div class="box-body">
			<div>
				<input id="address" type="hidden" value="${param.location}">
			</div>
			<div id="map-canvas"/>
			<div class="row"></div>
			<!-- /.box-body -->

			<div class="box-footer"></div>

		</div>
	</div>
</body>
</html>