<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <title>Complex Polylines</title>
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
      	width: 500px;
        height: 500px;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
  </head>
  <body>
    <div id="map"></div>
    <script>

      // This example creates an interactive map which constructs a polyline based on
      // user clicks. Note that the polyline only appears once its path property
      // contains two LatLng coordinates.

      var poly;
      var map;
      var labels = ['1'];
	  var labelindex = 0;
	  var i = 2;
	
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          zoom:11,
          center: {lat: 37.550989, lng: 126.989311}  // Center the map on Chicago, USA.
        });

        poly = new google.maps.Polyline({
          strokeColor: 'red',
          strokeOpacity: 1.0,
          strokeWeight: 2
        });
        poly.setMap(map);
        // Add a listener for the click event
        map.addListener('click', addLatLng);
      }

      // Handles click events on a map, and adds a new point to the Polyline.
      function addLatLng(event) {
        var path = poly.getPath();
        labels.push(i.toString());
		i++;
        // Because path is an MVCArray, we can simply append a new coordinate
        // and it will automatically appear.
        path.push(event.latLng);
        
        // Add a new marker at the new plotted point on the polyline.
        var marker = new google.maps.Marker({
          position: event.latLng,
          label: labels[labelindex++ % labels.length],
          title: '#' + path.getLength(),
          map: map
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDr6Dfkspeu36EGl6xPQ3q7jMVmJyE1tOU&callback=initMap">
    </script>
  </body>
</html>