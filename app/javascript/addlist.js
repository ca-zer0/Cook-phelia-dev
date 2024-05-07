$(document).ready(function(){
  $.ajaxSetup({
      headers: {
          'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
      }
  });

  $("[id^='add-to-list-']").on("click", function() {
    var recipeID = this.id.replace('add-to-list-', '');
    $.ajax({
      url: "/lists",
      method: "POST",
      data: {
          list: {
            recipe_id: recipeID
          }
      },
      success: function(response) {
          console.log(response);
      },
      error: function(jqXHR, textStatus, errorThrown) {
          console.log(jqXHR, textStatus, errorThrown);
      }
    });
  });
});
