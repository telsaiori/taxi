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

function for_travel(){
  var i;
  var x = document.getElementsByName("profile[for_travel_ids][]")
  if (document.getElementById("is_travel").checked){
    for (i=1; i<=x.length-1; i++){
      x[i].disabled = false;
    }
    document.getElementById("is_custom_travel").disabled = false; 
    document.getElementById("custom_travel").disabled = false;
  }else {
    for (i=1; i<=x.length-1; i++){
      x[i].disabled = true;
    }  
    document.getElementById("is_custom_travel").disabled = true;  
    document.getElementById("custom_travel").disabled = true;
  }
}


