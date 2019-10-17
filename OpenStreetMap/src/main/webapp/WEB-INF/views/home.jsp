<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta charset="utf-8" />
<title>Leaflet Routing Machine Example</title>
<link rel="stylesheet"
	href="https://unpkg.com/leaflet@1.2.0/dist/leaflet.css" />
<link rel="stylesheet" href="../../resources/css/leaflet-routing-machine.css" />
<style>
.map {
	position: absolute;
	width: 70%;
	height: 70%;
}
</style>
</head>
<body>
	<div id="map" class="map"></div>
	<script src="https://unpkg.com/leaflet@1.2.0/dist/leaflet.js"></script>
	<script src="../../resources/js/leaflet-routing-machine.js"></script>
	<script type="text/javascript">
		var map = L.map('map');

		L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
		    attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
		}).addTo(map);

		console.log(
		L.Routing.control({
			waypoints : [ L.latLng(37.5665, 126.9780), L.latLng(35.1796, 129.0756)],
			routeWhileDragging : true
		}));
		
/* 		L.Routing.control({
			waypoints : [ L.latLng(37.5665, 126.9780), L.latLng(35.1796, 129.0756)],
			routeWhileDragging : true
		}).addTo(map); */
	</script>
</body>
</html>
