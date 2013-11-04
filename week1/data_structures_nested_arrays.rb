# Solution for Challenge: P3: Data Structures - Nested Arrays . Started 2013-08-19T01:56:35+00:00

first_25_letters = ('A'..'Z').first(25)

# letter_grid = Array.new(5) { first_25_letters.shift(5) }
# p letter_grid

x_o = %w{ x o }

# tic_tac_toe = Array.new(3) { Array.new(3) { x_o.sample } }
# p tic_tac_toe.flatten.length
# p tic_tac_toe

# possible_xo = ("xo" * 4).split("").shuffle
# possible_xo << ["x", "o"].sample
# p tic_tac_toe = Array.new(3) { possible_xo.shift(3) }

# puts tic_tac_toe.map { |row| row.join(" ") + "\n" }


#### Objective 2

roster = [["Number", "Name", "Position", "Points per Game"],
          ["12","Joe Schmo","Center",[14, 32, 7, 0, 23] ],
          ["9", "Ms. Buckets ", "Point Guard", [19, 0, 11, 22, 0] ],
          ["31", "Harvey Kay", "Shooting Guard", [0, 30, 16, 0, 25] ],
          ["7", "Sally Talls", "Power Forward", [18, 29, 26, 31, 19] ],
          ["22", "MK DiBoux", "Small Forward", [11, 0, 23, 17, 0] ]]

def convert_roster_format(roster)
  roster.map do |row|
    roster[0].zip(row)
  end
end

formatted_roster = convert_roster_format(roster)
formatted_roster.slice!(0)
formatted_roster

def convert_to_hash(roster)
    @hashed_roster = []
    roster.each do |row|
        @hashed_roster << Hash[row]
    end
end

convert_to_hash(formatted_roster)
p @hashed_roster
p @hashed_roster[2]
puts @hashed_roster[0]["Name"] == "Joe Schmo"


