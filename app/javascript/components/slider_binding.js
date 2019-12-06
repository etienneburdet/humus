const bindRangeValue = () => {
  const investRange = document.getElementById('investRange');
  const investCap = investRange.dataset.cap;
  const investInput = document.getElementById('contract_investment');

  if(investRange) {
    investRange.addEventListener('input', e => {
      e.preventDefault();
      investInput.value = investRange.value * investCap / 100;
      calcul((investRange.value * investCap / 100), investCap);
    });

    investInput.addEventListener('input', e => {
      e.preventDefault();
      calcul((investRange.value = investInput.value * 100), investCap);
    });
  }
};

const calcul = (value, cap) => {
  let perc = (value / cap);
  const impacts = document.querySelectorAll('.impact-calculation');

  impacts.forEach((item) => {
    const v = parseInt(item.dataset.value, 10) * perc;
    item.innerText = v.toFixed(1);
  });
};

export { bindRangeValue };
