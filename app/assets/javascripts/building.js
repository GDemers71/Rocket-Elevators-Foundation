$(function() {
    $(".customer").show();
    $(".employee").show();
    $(".building").hide();
    $(".battery").hide();
    $(".column").hide();
    $(".elevator").hide();
    $(".author").hide();
    

    if ($("select#customer_id").val() == "") {
     $("select#building_id option").remove();
     var row = "<option value=\"" + "" + "\">" + "none" + "</option>";
     $(row).appendTo("select#building_id");
    }
    $("select#customer_id").change(function() {
     var id_value_string = $(this).val();
     if (id_value_string == "") {
      $("select#building_id option").remove();
      var row = "<option value=\"" + "" + "\">" + "none" + "</option>";
      $(row).appendTo("select#building_id");
     } else {
      // Send the request and update building dropdown
      $.ajax({
       dataType: "json",
       cache: false,
       url: '/get_buildings_by_customer/' + id_value_string,
       timeout: 5000,
       error: function(XMLHttpRequest, errorTextStatus, error) {
        alert("Failed to submit : " + errorTextStatus + " ;" + error);
       },
       success: function(data) {
        // Clear all options from building select
        $(".building").show();
        $("select#building_id option").remove();
        //put in a empty default line
        var row = "<option value=\"" + "" + "\">" + "none" + "</option>";
        $(row).appendTo("select#building_id");
        // Fill building select
        $.each(data, function(i, j) {
         row = "<option value=\"" + j.id + "\">" + j.id + "</option>";
         $(row).appendTo("select#building_id");
        });

       }
      });
     }
    });

    // ------------- section battery -----------------
    if ($("select#building_id").val() == "") {
        $("select#battery_id option").remove();
        var row = "<option value=\"" + "" + "\">" + "none" + "</option>";
        $(row).appendTo("select#battery_id");
       }
       $("select#building_id").change(function() {
        var id_value_string = $(this).val();
        if (id_value_string == "") {
         $("select#battery_id option").remove();
         var row = "<option value=\"" + "" + "\">" + "none" + "</option>";
         $(row).appendTo("select#battery_id");
        } else {
         // Send the request and update battery dropdown
         $.ajax({
          dataType: "json",
          cache: false,
          url: '/get_batteries_by_building/' + id_value_string,
          timeout: 5000,
          error: function(XMLHttpRequest, errorTextStatus, error) {
           alert("Failed to submit : " + errorTextStatus + " ;" + error);
          },
          success: function(data) {
           // Clear all options from battery select
           $(".battery").show();
           $("select#battery_id option").remove();
           //put in a empty default line
           var row = "<option value=\"" + "" + "\">" + "none" + "</option>";
           $(row).appendTo("select#battery_id");
           // Fill battery select
           $.each(data, function(i, j) {
            row = "<option value=\"" + j.id + "\">" + j.id + "</option>";
            $(row).appendTo("select#battery_id");
           });
          }
         });
        }
       });

    //    ---------- section column -------------
       if ($("select#battery_id").val() == "") {
        $("select#column_id option").remove();
        var row = "<option value=\"" + "" + "\">" + "none" + "</option>";
        $(row).appendTo("select#column_id");
       }
       $("select#battery_id").change(function() {
        var id_value_string = $(this).val();
        if (id_value_string == "") {
         $("select#column_id option").remove();
         var row = "<option value=\"" + "" + "\">" + "none" + "</option>";
         $(row).appendTo("select#column_id");
        } else {
         // Send the request and update column dropdown
         $.ajax({
          dataType: "json",
          cache: false,
          url: '/get_columns_by_battery/' + id_value_string,
          timeout: 5000,
          error: function(XMLHttpRequest, errorTextStatus, error) {
           alert("Failed to submit : " + errorTextStatus + " ;" + error);
          },
          success: function(data) {
           // Clear all options from column select
           $(".column").show();
           $("select#column_id option").remove();
           //put in a empty default line
           var row = "<option value=\"" + "" + "\">" + "none" + "</option>";
           $(row).appendTo("select#column_id");
           // Fill column select
           $.each(data, function(i, j) {
            row = "<option value=\"" + j.id + "\">" + j.id + "</option>";
            $(row).appendTo("select#column_id");
           });
          }
         });
        }
       });

       if ($("select#column_id").val() == "") {
        $("select#elevator_id option").remove();
        var row = "<option value=\"" + "" + "\">" + "none" + "</option>";
        $(row).appendTo("select#elevator_id");
       }
       $("select#column_id").change(function() {
        var id_value_string = $(this).val();
        if (id_value_string == "") {
         $("select#elevator_id option").remove();
         var row = "<option value=\"" + "" + "\">" + "none" + "</option>";
         $(row).appendTo("select#elevator_id");
        } else {
         // Send the request and update elevator dropdown
         $.ajax({
          dataType: "json",
          cache: false,
          url: '/get_elevators_by_column/' + id_value_string,
          timeout: 5000,
          error: function(XMLHttpRequest, errorTextStatus, error) {
           alert("Failed to submit : " + errorTextStatus + " ;" + error);
          },
          success: function(data) {
           // Clear all options from elevator select
           $(".elevator").show();
           $("select#elevator_id option").remove();
           //put in a empty default line
           var row = "<option value=\"" + "" + "\">" + "none" + "</option>";
           $(row).appendTo("select#elevator_id");
           // Fill elevator select
           $.each(data, function(i, j) {
            row = "<option value=\"" + j.id + "\">" + j.id + "</option>";
            $(row).appendTo("select#elevator_id");
           });
          }
         });
        }
       });
   });