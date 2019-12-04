import { Sortable } from '@shopify/draggable';

const initSortable = () => {

  const sortable = new Sortable(document.querySelectorAll('tbody'), {
    draggable: 'tr',
  });

  const tableBody = document.querySelector('tbody')
  const rows = Array.from(document.querySelectorAll('tbody > tr'));
  const headers = Array.from(document.querySelectorAll('thead > tr > th'))

  const compareRows = (row1, row2) => {
    console.log('Hello from sort rows');
    const diff = row2.children[1].innerText - row1.children[1].innerText;
    return diff;
  };

  const sortRows = (e) => rows.sort(compareRows).forEach( tr => tableBody.appendChild(tr));

  headers.forEach( th => th.addEventListener('click', sortRows));
};

export { initSortable };
