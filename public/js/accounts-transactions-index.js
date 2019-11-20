$(function() {
  $('.button').click(function() {
    $url = $(this).attr('data-url');

    if ($url) {
      window.location.replace($url);
    }
  });
});
