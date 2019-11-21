$(function() {
  var timeNow = new Date();

  var month = timeNow.getMonth() + 1;
  month = (month < 10) ? ('0' + month) : month;

  var day = timeNow.getDate();
  day = (day < 10) ? ('0' + day) : day;

  var date = timeNow.getFullYear() + '-' + month + '-' + day;

  $('#start-date').attr('value', date);
});