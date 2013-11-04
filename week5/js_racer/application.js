$(document).ready(function() {
  var player_1 = 0
  var player_2 = 0

  $(document).on('keyup', function(e) {
    if (e.keyCode == 80 && player_1 < 14 && player_2 < 14) {
    move_player('#player1_strip')
    player_1 ++
      if winner(player_1) {
      alert("Player 1 has won!")};
  }
    if (e.keyCode == 81 && player_1 < 14 && player_2 < 14) {
    move_player('#player2_strip')
    player_2 ++
      if winner(player_2) {
      alert("Player 2 has won!")};
  }
  });
});


function move_player(strip) {
  $(strip).find('td.active').removeClass('active').next().addClass('active');
}


function winner(player) {
  if (player > 13)
    return true;
}
