  function XSays(x){
    return function(y){
      return x + " says " + y;
    };
  }

  var elaineSays = XSays("Elaine");
  var a = elaineSays("Hi");
  var b = elainsSays("Bye");
