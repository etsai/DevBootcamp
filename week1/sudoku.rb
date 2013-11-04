class Sudoku
  def initialize(board_string)
    board_string = board_string.split("")
    @board = []
    9.times do |row|
      @board << board_string.shift(9)
      @board[row].map! do |item|
        item.to_i
      end
    end
  end

  def return_row(row)
    row_arr = []
    board[row].each do |item|
      if item.is_a?(Integer)
        row_arr << item
      end
    end
    row_arr
  end

  def return_column(col)
    col_arr = []
    board.transpose[col].each do |item|
      if item.is_a?(Integer)
        col_arr << item
      end
    end
    col_arr
  end

  def return_box(starting_x, starting_y)
    starting_x = (starting_x - (starting_x % 3))
    starting_y = (starting_y - (starting_y % 3))
    box = []
    starting_x.upto(starting_x + 2) do |x|
      starting_y.upto(starting_y + 2) do |y|
        box << board[x][y]
      end
    end

    box_arr = []
    box.each do |item|
      if item.is_a?(Integer)
        box_arr << item
      end
    end
    box_arr
  end

  def filled?(row, col)
    if board[row][col] == 0
      board[row][col] = (1..9).to_a
      false
    elsif board[row][col].class == Integer
      true
    elsif board[row][col].class == Array
      false
    end
  end

  def solve_cell!(row, col)
    if filled?(row, col) == false
     @board[row][col] = @board[row][col] - return_row(row) -
                        return_column(col) - return_box(row, col)
    end

    if @board[row][col].class == Array && @board[row][col].length == 1
      @board[row][col] = @board[row][col].pop
    end
  end

  def solve!
    while sudoku_solved? == false
      9.times do |row|
        9.times do |col|
          solve_cell!(row, col)
        end
      end
    end
  end


  # Returns a string representing the current state of the board
  # Don't spend too much time on this method; flag someone from staff
  # if you are.
  def board
    @board.each do |row|
      print row
      puts ""
    end
  end

  def sudoku_solved?(board)
    board.flatten(1).each do |cell|
      return false if cell.class == Array || cell == 0
    end
    true
  end
end

####### NOTES
Replace all 0 in the board with an array from (1..9)

Then do every permutation of the remaining numbers.

First put in the index[0] of every array.
if the board is correct then return the board
if not then put in add to the next array and test_board

1, 1, 1
1, 2, 2
1, 2, 3
1, 3, 3

2, 1, 1
2, 2, 2
2, 2, 3
2, 3, 3

3, 1, 1
3, 2, 2
3, 2, 3
3, 3, 3


then it has to come back down?



[ ] build test_board method
    This method will add all the numbers in the row, column, and box and make sure it equals 45.

def board_correct?
    # Test row
    @board.each do |row|
        row.inject(:+) == 45
    end

    # Test column
    @board.transpose[col].each do |item|
        item.inject(:+) == 45
    end

    # Test box

end


# The file has newlines at the end of each line, so we call
# String#chomp to remove them.
# board_string = File.readlines('sample.unsolved.txt').first.chomp

board_strings =
["105802000090076405200400819019007306762083090000061050007600030430020501600308900",
"005030081902850060600004050007402830349760005008300490150087002090000600026049503",
"105802000090076405200400819019007306762083090000061050007600030430020501600308900",
"005030081902850060600004050007402830349760005008300490150087002090000600026049503",
"290500007700000400004738012902003064800050070500067200309004005000080700087005109",
"080020000040500320020309046600090004000640501134050700360004002407230600000700450",
"608730000200000460000064820080005701900618004031000080860200039050000100100456200",
"370000001000700005408061090000010000050090460086002030000000000694005203800149500",
]

board_strings2 =
["000689100800000029150000008403000050200005000090240801084700910500000060060410000"]
# "030500804504200010008009000790806103000005400050000007800000702000704600610300500",
# "096040001100060004504810390007950043030080000405023018010630059059070830003590007",
# "000075400000000008080190000300001060000000034000068170204000603900000020530200000",
# "300000000050703008000028070700000043000000000003904105400300800100040000968000200",
# "302609005500730000000000900000940000000000109000057060008500006000000003019082040"]

index = 1
board_strings2.each do |board_string|
  game = Sudoku.new(board_string)
  game.solve!
  puts "Here is solved board number #{index}:"
  game.board
  index += 1
end


# Remember: this will just fill out what it can and not "guess"
# game.solve!

# puts "Here is the solved board:"
# game.board

