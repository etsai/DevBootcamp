$(document).ready(function () {
  $("#tab1").show();

  $('li').click(function() {
    $(this).siblings().removeClass('active')
    $(this).addClass('active')
    var active_id = $('.active').children('a').attr('href')
    $('.tab').hide();
    $(active_id).show();
    });
  });
