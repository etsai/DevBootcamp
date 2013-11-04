require_relative 'racer_utils.rb'

class RubyRacer
  attr_reader :players, :length

  def initialize(players, length = 30)
    @die = Die.new
    @players = players
    @length = length
    @board = Array.new(@players.size){ Array.new(@length){ "_" } }
    @position_a = 0
    @position_b = 0
  end

  def finished?
    if ( @position_a >= @length || @position_b >= @length)
      true
    else
      false
    end
  end

  def winner
    if @position_a == @length - 1
      return 'A'
    else @position_b == @length - 1
      return 'B'
    end
  end

  def advance_player!(player)
    if player == "a"
      @board[0][@position_a] = "_"
      @position_a = [(@position_a + @die.roll), @length].min
      @board[0][@position_a] = "a"
    elsif player == "b"
      @board[1][@position_b] = "_"
      @position_b = [(@position_b + @die.roll), @length].min
      @board[1][@position_b] = "b"
    end
  end

  def print_board
    reputs(@board[0].join + "\n" + @board[1].join)
  end

end

@players = ['a', 'b']

game = RubyRacer.new(@players)

# This clears the screen, so the fun can begin
clear_screen!

until game.finished?
  @players.each do |player|
# This moves the cursor back to the upper-left of the screen
move_to_home!
# We print the board first so we see the initial, starting board
game.print_board

game.advance_player!(player)

# We need to sleep a little, otherwise the game will blow right past us.
# See http://www.ruby-doc.org/core-1.9.3/Kernel.html#method-i-sleep
sleep(0.4)
end

end

# The game is over, so we need to print the "winning" board
clear_screen!
game.print_board

puts "Player '#{game.winner}' has won!"