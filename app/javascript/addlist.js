$(document).ready(function () {
  $.ajaxSetup({
    headers: {
      'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
    }
  });

  $("[id^='add-to-list-']").on("click", function() {
    var recipeID = $(this).data('id');
    $.ajax({
      type: "POST",
      url: "/lists",
      data: JSON.stringify({
        list: {
          recipe_id: recipeID
        }
      }),
      contentType: 'application/json',
      success: function(response) {
        console.log(response);
      },
      error: function(jqXHR, textStatus, errorThrown) {
        console.log(jqXHR, textStatus, errorThrown);
      }
    });
  });
});