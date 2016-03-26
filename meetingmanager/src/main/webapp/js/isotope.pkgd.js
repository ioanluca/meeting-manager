$(document).ready( function() {
  
  $('.grid').isotope({
    itemSelector: '.grid-item',
    masonry: {
      columnWidth: 200,
      gutter: 10
    }
  });

});