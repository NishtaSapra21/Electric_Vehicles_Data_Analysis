console.log("working");

//L.mapbox.accessToken = API_KEY;
var map = L.map('mapid').setView([45.51179,  -122.67563], 9);

// Add tiles from the Mapbox Static Tiles API
// (https://docs.mapbox.com/api/maps/#static-tiles)
// Tiles are 512x512 pixels and are offset by 1 zoom level
L.tileLayer(
    'https://api.mapbox.com/styles/v1/mapbox/streets-v11/tiles/{z}/{x}/{y}?access_token=' + API_KEY, {
        tileSize: 512,
        zoomOffset: -1,
        attribution: '© <a href="https://www.mapbox.com/contribute/">Mapbox</a> © <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
  }).addTo(map);

// Accessing the airport GeoJSON URL
let fuelStations = "https://raw.githubusercontent.com/NishtaSapra21/EV_Analysis/main/alt_fuel_stations.geojson";


// Grabbing our GeoJSON data.
d3.json(fuelStations).then(function(data) {
  console.log(data);

  //createFeatures(data.features);

  L.geoJson(data, {
    style: function(feature) {
      return {
        color: "red"
      };
    },
    pointToLayer: function(feature, latlng) {
      return new L.CircleMarker(latlng, {
        radius: 6, 
        fillOpacity: 0.85
      });
    },

   onEachFeature: function(feature, layer) {
    layer.bindPopup("Station: " + feature.properties.station_name + "<br>Address: " + feature.properties.street
                    +"<br>City: " + feature.properties.City + ", " + feature.properties.ZIP 
                    +"<br>Access: " +feature.properties.access_code + "<br>Access Time: " + feature.properties.access_time);
    }
  }).addTo(map);
  
});

    
    
console.log("End")

