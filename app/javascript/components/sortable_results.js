import { Sortable, Plugins } from '@shopify/draggable';
import SwapAnimation from '@shopify/draggable/lib/plugins/swap-animation';

const initSortable = () => {

  const sortable = new Sortable(document.querySelectorAll('tbody'), {
    draggable: 'tr',
    handle: 'i',
    swapAnimation: {
      duration: 200,
      easingFunction: 'ease-in-out',
      horizontal: false
    },
    plugins: [Plugins.SwapAnimation]
  });

  sortable.on('sortable:start', (e) => {
    e.dragEvent.source.classList.add('selected-row');
  });

  const tableBody = document.querySelector('tbody')
  const rows = Array.from(document.querySelectorAll('tbody > tr'));
  const headers = Array.from(document.querySelectorAll('thead > tr > th'));
  headers.shift();  //remove top-left empty corner

  const compareRows = (idx) => {
    return (row1, row2) => {
      const diff = row2.children[idx].innerText - row1.children[idx].innerText;
      return diff;
    };
  };


  const sortRows = (idx) => {
    return (e) => {
      e.preventDefault();
      headers.forEach( (header) => {
          if (header === headers[idx] ) {
            header.querySelector('i').classList.add('fa-sort-down', 'selected-column');
          } else {
            header.querySelector('i').classList.remove('selected-column', 'fa-sort-down');
          }
      });
      rows.sort(compareRows(idx + 1)).forEach( tr => tableBody.appendChild(tr));
    };
  };

  const showSortIcon = (e) => {
    e.target.querySelector('i').classList.add('fa-sort')
  };

  headers.forEach( (th, idx) => th.addEventListener('click', sortRows(idx))); //compensate for shitf on hea
};

export { initSortable };
