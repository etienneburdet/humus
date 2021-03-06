import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('q');
  if (addressInput) {
    places({ container: addressInput })
      .configure({ type: 'city' });
  }
};

export { initAutocomplete };
