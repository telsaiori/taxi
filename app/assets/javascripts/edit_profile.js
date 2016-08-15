function input_disable(){
  if (document.getElementById("insurance_check").checked){
    document.getElementById("profile_insurance").disabled = false;
  }else {
    document.getElementById("profile_insurance").disabled = true;
  }
}


