$(document).ready(function() {
  $(".edit_cart_product input").change(function(){
    $(this).parent("form").submit();
  });
});
