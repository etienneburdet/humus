import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';

import { initAutocomplete }    from '../components/select_city.js'
import { createProjectMapBox } from '../components/create_project_mapbox.js'
import { searchProjectMapBox } from '../components/search_project_mapbox.js'
import { investProjectMapBox } from '../components/invest_project_mapbox.js'
createProjectMapBox();
searchProjectMapBox();
investProjectMapBox();
initAutocomplete();
