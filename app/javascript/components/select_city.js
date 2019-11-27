import $ from 'jquery';
import 'select2';

const initAutocomplete = () => {
  if ($('.city-ajax')) {
    const cities = ["Amsterdam","Bali","Barcelona","Belo Horizonte","Berlin","Bordeaux","Brussels","Buenos Aires","Casablanca","Chengdu","Copenhagen","Kyoto","Lausanne","Lille","Lisbon","London","Lyon","Madrid","Marseille","Melbourne","Mexico","Milan","Montréal","Nantes","Oslo","Paris","Rio de Janeiro","Rennes","Rome","São Paulo","Seoul","Shanghai","Shenzhen","Singapore","Stockholm","Tel Aviv","Tokyo"];
    $('.city-ajax').select2({ data: cities });
  }
};

export { initAutocomplete };
