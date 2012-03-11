//= require jquery
//= require_tree 

$(document).ready(function() {
  $("#priceLevel").change(function() {
    window.location = $(this).find("option:selected").val()
  })
});