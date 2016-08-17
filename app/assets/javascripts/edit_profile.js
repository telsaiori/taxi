function insurance_input_disable(){
  if (document.getElementById("insurance_check").checked){
    document.getElementById("profile_insurance").disabled = false;
  }else {
    document.getElementById("profile_insurance").disabled = true;
  }
}


function custom_car_desable(){
  if (document.getElementById("is_custom_car").checked){
    document.getElementById("custom_car").disabled = false;
  }else{
    document.getElementById("custom_car").disabled = true
  }
}

function custom_eq_disable(){
  if (document.getElementById("is_custom_eq").checked){
    document.getElementById("custom_eq").disabled = false;
  }else{
    document.getElementById("custom_eq").disabled = true;
  }
}

function custom_lan_disable(){
  if (document.getElementById("is_custom_lan").checked){
    document.getElementById("custom_lan").disabled = false;
  }else{
    document.getElementById("custom_lan").disabled = true;
  }
}


