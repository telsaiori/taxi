$(document).on('turbolinks:load', function() {
  if ($('#insurance_check').prop("checked")) {
    $('#profile_insurance').prop("disabled", false);
  }

  if ($('#custom_car').prop("value")){
    $('#is_custom_car').prop("checked", true);
    $('#custom_car').prop("disabled", false);
  }

  if ($('#custom_eq').prop("value")){
    $('#is_custom_eq').prop("checked", true);
    $('#custom_eq').prop("disabled", false);
  }

  if ($('#custom_lan').prop("value")){
    $('#is_custom_lan').prop("checked", true);
    $('#custom_lan').prop("disabled", false);
  }

  if ($('#profile_is_for_travel').prop("checked")){
    var i ;
    var x = $('.travel-checked-box .checkbox-inline');
    for (i=0; i<= x.length-1;i++){
      x[i].disabled = false;
    }
  }

  if ($('#custom_travel').prop("value")){
    $('#is_custom_travel').prop("checked", true);
    $('#custom_travel').prop("disabled", false);
  }

  if ($('#profile_is_for_airport').prop("checked")){
    var i ;
    var x = $('.airport-checked-box .checkbox-inline');
    for (i=0; i<= x.length-1;i++){
      x[i].disabled = false;
    }
  }

  if ($('#custom_airport').prop("value")){
    $('#is_custom_airport').prop("checked", true);
    $('#custom_airport').prop("disabled", false);
  }

  if ($('#profile_is_for_hr').prop("checked")){
    var i ;
    var x = $('.hr-checked-box .checkbox-inline');
    for (i=0; i<= x.length-1;i++){
      x[i].disabled = false;
    }
  }

});

