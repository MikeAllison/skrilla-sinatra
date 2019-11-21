$(function() {
  $('.card').click(function() {
    window.location.replace($(this).attr('data-url'));
  });
});
