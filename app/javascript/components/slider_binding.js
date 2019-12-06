const bindRangeValue = () => {
  const investRange = document.getElementById('investRange');
  const investCap = investRange.dataset.cap;
  const investInput = document.getElementById('contract_investment');

  if(investRange) {
    investRange.addEventListener('input', e => {
      e.preventDefault();
      investInput.value = investRange.value * investCap / 100;
      setBadges();
    });

    investInput.addEventListener('input', e => {
      e.preventDefault();
      investRange.value = investInput.value * 100 / investCap;
      setBadges();
    });
  }
};

const setBadges = () => {
  const impacts = document.querySelectorAll('.impact-calculation');

  impacts.forEach((item) => {
    const v = parseInt(item.dataset.value, 10) * investRange.value / 100;
    item.innerText = v.toFixed(1);
  });
};

export { bindRangeValue };
