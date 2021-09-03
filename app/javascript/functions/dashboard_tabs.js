import $ from 'jquery';

const dashboardTabs = () => {
  var hash = location.hash.replace(/^#/, '');  // ^ means starting, meaning only match the first hash
  console.log(hash);
  console.log(location);
  if (hash) {
    $('.nav-tabs a[href="#' + hash + '"]').tab('show');
  }
}

export { dashboardTabs }
