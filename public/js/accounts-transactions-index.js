$(function() {
  $('.button').click(function() {
    window.location.replace($(this).attr('data-link'));
  });
});
