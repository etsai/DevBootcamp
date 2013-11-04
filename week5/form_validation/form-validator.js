$(function(){
  $("form").submit(function(event) {
    event.preventDefault();
    $("ul").empty();

    var email = $("input:first").val()
    var password = $("input:last").val()
    var valid_email = /\w+@\w+.\w/
    var char_length = /.{8,}/
    var digit = /\d+/
    var capital = /[A-Z]/

    var check_email = check_email();
    var check_password = check_password();

    if (check_email == true && check_password == true){
      $.ajax({
        type: this.method,
        url: this.action,
        data: $(this).serialize
      });
    }

    function check_email() {
    if (valid_email.test(email) == false){
      $("#errors").append("<li> Must be a valid email address </li>")
      }
    if (valid_email.test(email) == true){
      return true
    }
    };

    function check_password() {
    if (char_length.test(password) == false){
      $("#errors").append("<li> Password must have at least one numeric character (0-9) </li>")
    }
    if (capital.test(password) == false){
      $("#errors").append("<li> Password must have at least one capital letter. </li>")
    }
    if (digit.test(password) == false){
      $("#errors").append("<li> Password must have at least 8 characters. </li>")
    }
    if (char_length.test(password) == true && capital.test(password) == true && digit.test(password) == true){
      return true
    }
    };
  });
});









