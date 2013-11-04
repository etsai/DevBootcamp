$(document).ready(function() {
  $('nav').on('click', .expand,
    function() {
    $(this).find('.links')
           .fadeToggle();
  });
});