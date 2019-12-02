import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';

import { initAutocomplete }    from '../components/select_city.js'
import { createProjectMapBox } from '../components/create_project_mapbox.js'
import { searchProjectMapBox } from '../components/search_project_mapbox.js'
import { investProjectMapBox } from '../components/invest_project_mapbox.js'
import { bindRangeValue }      from '../components/slider_binding.js'

createProjectMapBox();
searchProjectMapBox();
investProjectMapBox();
initAutocomplete();
bindRangeValue();


// const initCalcul = () => {
//   const form = document.querySelector('#new_contract');
//   const input = document.querySelector('#contract_investment')

//   form.addEventListener('change', (e) => {

//   })
// }

// initSlider();
