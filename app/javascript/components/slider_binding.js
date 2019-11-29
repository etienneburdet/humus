const bindRangeValue = () => {
  const investRange = document.getElementById('investRange');
  const investCap = investRange.dataset.cap
  const investInput = document.getElementById('contract_investment');

  if(investRange) {
    investRange.addEventListener('input', e => {
      e.preventDefault();
      investInput.value = investRange.value * investCap / 100;
    });

    investInput.addEventListener('input', e => {
      e.preventDefault();
      investRange.value = investInput.value * 100 / investCap;
    });
  }
};

export { bindRangeValue };
