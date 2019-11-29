import mapboxgl from 'mapbox-gl';

const investProjectMapBox = () => {
  const mapElement = document.getElementById('investProjectMap');

  const fitMapToMarker = (map, marker) => {
    const bounds = new mapboxgl.LngLatBounds();
    bounds.extend([ marker.lng, marker.lat ]);
    map.fitBounds(bounds, { padding: 100, maxZoom: 15, duration: 0 });
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
  }
};

export { investProjectMapBox };
