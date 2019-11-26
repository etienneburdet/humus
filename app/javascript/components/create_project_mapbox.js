import mapboxgl from 'mapbox-gl';

const createProjectMapBox = () => {
  const mapElement = document.getElementById('createProjectMap');


  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'createProjectMap',
      style: 'mapbox://styles/mapbox/streets-v11'
    });

    const updateMarker = e => {
      // const lngLat = [e.lngLat.lng, e.lngLat.lat];
      // console.log(lngLat);
      console.log(e.lngLat);
      marker.setLngLat(e.lngLat);
    };

    const marker = new mapboxgl.Marker();
    map.on('click', updateMarker);
    marker.addTo(map);
  }
};

export { createProjectMapBox };
