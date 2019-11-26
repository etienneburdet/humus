import mapboxgl from 'mapbox-gl';

const createProjectMapBox = () => {
  const mapElement = document.getElementById('createProjectMap');

  const getLocation= e => console.log(e.lngLat);

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'createProjectMap',
      style: 'mapbox://styles/mapbox/streets-v11'
    });

    map.on('click', getLocation)
  }
};

export { createProjectMapBox };
