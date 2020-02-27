$(function() {
  // var list = $('.cardid').val();
  $("ul").sortable({
    connectWith: "ul"
  }).disableSelection();

  $(".listWrapper").sortable({
    connectWith: ".listWrapper"
  }).disableSelection();
});