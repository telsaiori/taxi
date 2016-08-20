$(document).ready(function(){
  if ($('#insurance_check').prop("checked")) {
    $('#profile_insurance').prop("disabled", false);
  };

  if ($('#custom_car').prop("value")){
    $('#is_custom_car').prop("checked", true);
    $('#custom_car').prop("disabled", false);
  };

});

