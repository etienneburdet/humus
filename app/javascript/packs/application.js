import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import 'select2/dist/css/select2.css'

import { initAutocomplete }    from '../components/select_city.js'
import { createProjectMapBox } from '../components/create_project_mapbox.js'
import { searchProjectMapBox } from '../components/search_project_mapbox.js'
createProjectMapBox();
searchProjectMapBox();
initAutocomplete();
