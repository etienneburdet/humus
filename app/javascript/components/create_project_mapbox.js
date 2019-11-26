import mapboxgl from 'mapbox-gl';

const createProjectMapBox = () => {
  const mapElement = document.getElementById('createProjectMap');


  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'createProjectMap',
      style: 'mapbox://styles/mapbox/streets-v11'
    });

    const latInput = document.getElementById('project_latitude');
    const lngInput = document.getElementById('project_longitude');

    const updateMarker = (e) => {
      marker.setLngLat(e.lngLat);
      latInput.value = e.lngLat.lat;
      lngInput.value = e.lngLat.lng;
    };

    const marker = new mapboxgl.Marker();
    map.on('click', updateMarker);
    marker.addTo(map);
  }
};

export { createProjectMapBox };
