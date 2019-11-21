$(function() {
  $('.ui.dropdown').dropdown();

  $('.button').click(function() {
    $url = $(this).attr('data-url');

    if ($url) {
      window.location.replace($url);
    }
  });
});
