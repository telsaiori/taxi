$(document).ready(function(){
  $('.fake_btn').click(function(){
    $('.form2').show();
    $('.form1').hide();
  });

  $(".signup_form").validate({
    rules: {
      email: "required",
      password: "required",
      password_confirmation: "required",
      name: "required",
      id_no: "required",
      address: "required",
      tel: "required"
    },
    messages: {
      name: "名子勒？"
    }  
  });
});