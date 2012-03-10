//= require jquery

$(document).ready(function() {
  $("#priceLevel").change(function() {
    window.location = $(this).find("option:selected").val()
  })
});
