When the user clicks the "Sign Up" button
They should be notified if any of the following conditions are NOT true
- The email conforms to the standard pattern

var email_valid = new RegExp("\\w+@\\w+.\\w");

- The password has at least 8 characters

/.{8,}/

- The password has at least one capital letter


/[A-Z]/

- The password has at least one numeric character

/\d+/

If any of the above conditions are false
- The form is not allowed to be submitted
- Error messages are dislpayed