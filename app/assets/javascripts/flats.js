$(function() {
  $('body').on('click', '.delete-photo', function() {
    $(this).parent("fieldset").fadeOut(500);
  })

  $('body').on('change', '.upload', function() {
    $(this).parents('form').submit();
  });

});