import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';

import { initAutocomplete }    from '../components/select_city.js'
import { createProjectMapBox } from '../components/create_project_mapbox.js'
import { searchProjectMapBox } from '../components/search_project_mapbox.js'
import { investProjectMapBox } from '../components/invest_project_mapbox.js'
import { bindRangeValue }      from '../components/slider_binding.js'
import { updateFavorite }      from '../components/favorite_project.js'

createProjectMapBox();
searchProjectMapBox();
investProjectMapBox();
initAutocomplete();
const slider = document.getElementById('investRange');
if (slider) {
  bindRangeValue();
}

updateFavorite();
window.updateFavorite = updateFavorite;