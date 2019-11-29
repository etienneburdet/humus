import mapboxgl from 'mapbox-gl';

const investProjectMapBox = () => {
  const mapElement = document.getElementById('investProjectMap');
  const metersToPixelsAtMaxZoom = (meters, latitude) => {
    return meters / 0.075 / Math.cos(latitude * Math.PI / 180)
  };

  const fitMapToMarker = (map, marker) => {
    const bounds = new mapboxgl.LngLatBounds();
    bounds.extend([ marker.lng, marker.lat ]);
    map.fitBounds(bounds, { padding: 100, maxZoom: 14, duration: 0 });
  };

  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'investProjectMap',
      style: 'mapbox://styles/mapbox/streets-v11'
    });

    const marker = JSON.parse(mapElement.dataset.marker);
    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .addTo(map);
    fitMapToMarker(map, marker);

    map.on('load', () => {
      map.addSource('project-point', {
        "type": "geojson",
        "data": {
          "type": "Feature",
          "geometry": {
            "type": "Point",
            "coordinates": [ marker.lng, marker.lat ]
          },
        }
      });

      const projectRadius = metersToPixelsAtMaxZoom(500, marker.lat);
      const investRange = document.getElementById('investRange');

      map.addLayer({
        id: 'project-circle',
        type: 'circle',
        source: 'project-point',
        paint: {
          "circle-radius": {
            stops: [
              [0, 0],
              [20, projectRadius]
            ],
            base: 2
          },
          'circle-opacity': 0.3,
          'circle-color': '#87A878'
        }
      });

      map.addLayer({
        id: 'invest-circle',
        type: 'circle',
        source: 'project-point',
        paint: {
          "circle-radius": {
            stops: [
              [0, 0],
              [20, projectRadius * investRange.value / 100]
            ],
            base: 2
          },
          'circle-opacity': 0.8,
          'circle-color': '#87A878'
        }
      });

      investRange.addEventListener('input', (e) => {
        e.preventDefault();
        map.setPaintProperty(invertRange.value / 100, 'circle-radius');
      });
    });
  }
};

export { investProjectMapBox };
