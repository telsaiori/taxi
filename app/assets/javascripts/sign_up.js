$(document).ready(function(){
  $('.fake_btn').click(function(){
    $('.form2').show();
    $('.form1').hide();
  });

  $(".signup_form").validate({
    rules: {
      "user[email]": "required",
      "user[password]": "required",
      "user[password_confirmation]": "required",
      "user[name]": "required",
      "user[id_no]": "required",
      "user[address]": "required",
      "user[tel]": "required"
    },
    messages: {
      "user[name]": "名子勒？",
    },
    errorPlacement: function(error, element){
      if (element.is("input:radio")){
        error.appendTo(element.parent());
      } else {
        error.insertAfter(element);
      }
    } 
  });
});