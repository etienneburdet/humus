import { Sortable } from '@shopify/draggable';

const initSortable = () => {

  const sortable = new Sortable(document.querySelectorAll('tbody'), {
    draggable: 'tr',
  });

  const tableBody = document.querySelector('tbody')
  const rows = Array.from(document.querySelectorAll('tbody > tr'));
  const headers = Array.from(document.querySelectorAll('thead > tr > th'))

  const compareRows = (idx) => {
    return (row1, row2) => {
      const diff = row2.children[idx].innerText - row1.children[idx].innerText;
      return diff;
    };
  };


  const sortRows = (idx) => {
    return (e) => {
      e.preventDefault();
      rows.sort(compareRows(idx)).forEach( tr => tableBody.appendChild(tr));
    };
  };

  headers.forEach( (th, idx) => th .addEventListener('click', sortRows(idx)));
};

export { initSortable };
