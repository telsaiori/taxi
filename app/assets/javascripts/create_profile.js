function insurance_input_disable(){
  if (document.getElementById("insurance_check").checked){
    document.getElementById("profile_insurance").disabled = false;
  }else {
    document.getElementById("profile_insurance").disabled = true;
  }
}


function custom_car_disable(){
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
  if (document.getElementById("profile_is_for_travel").checked){
    for (i=1; i<=x.length-1; i++){
      x[i].disabled = false;
    }
    document.getElementById("is_custom_travel").disabled = false; 
  }else {
    for (i=1; i<=x.length-1; i++){
      x[i].disabled = true;
    }  
    document.getElementById("is_custom_travel").disabled = true;  
  }
}

function for_travel_etc(){
  if (document.getElementById("is_custom_travel").checked){
    document.getElementById("custom_travel").disabled = false
  }else{
    document.getElementById("custom_travel").disabled = true
  }
}

function for_airport(){
  var i;
  var x = document.getElementsByName("profile[for_airport_ids][]")
  if (document.getElementById("profile_is_for_airport").checked){
    for (i=1; i<=x.length-1; i++){
      x[i].disabled = false;
    }
    document.getElementById("is_custom_airport").disabled = false; 
  }else {
    for (i=1; i<=x.length-1; i++){
      x[i].disabled = true;
    }  
    document.getElementById("is_custom_airport").disabled = true;  
  }
}

function for_airport_etc(){
  if (document.getElementById("is_custom_airport").checked){
    document.getElementById("custom_airport").disabled = false
  }else{
    document.getElementById("custom_airport").disabled = true
  }
}

function for_high_rail(){
  var i;
  var x = document.getElementsByName("profile[for_high_rail_ids][]")
  if (document.getElementById("profile_is_for_hr").checked){
    for( i=1; i <= x.length-1; i++){
      x[i].disabled = false;
    }
  }else{
    for( i=1; i <= x.length-1; i++){
      x[i].disabled = true;
    }
  }
}


