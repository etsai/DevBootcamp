function Die(){
  this.value=0
}

Die.prototype.roll = function(){
  this.value=Math.floor((Math.random()*6)+1);
}

Die.prototype.render = function(){
  return '<div class="die">' + this.value '</div>'
}


function DiceBag(){
  this.dice=[];
}

DiceBag.prototype.addDice = function(die){
  this.dice.push(die)

}

DiceBag.prototype.render = function(){

}

// DiceBag.prototype.roll = function(){

// }



$(document).ready(function() {
  $('#roller button.add').on('click', addDice);

  $('#roller button.roll').on('click', rollDie);

  function addDice() {

    $('.dice').append('<div class="die">0</div>');
  }

  function rollDie() {
    $('.die').each(function(k, die) {
      $(die).text(diceSides());
    });
  }

  function diceSides() {
    return Math.floor((Math.random()*6)+1);
  }

});
