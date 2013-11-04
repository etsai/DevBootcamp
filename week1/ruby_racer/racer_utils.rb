class Die
  def initialize(sides = 6)
    @sides = sides
  end

  # Remember: rand(N) randomly returns one of N consecutive integers, starting at 0
  # So rand(N) returns a random integer in (0..N-1)
  # And 1 + rand(N) returns a random integer in (1..N)
  # See: http://www.ruby-doc.org/core-1.9.3/Kernel.html#method-i-rand
  def roll
    1 + rand(@sides)
  end
end

# Use "reputs" to print over a previously printed line,
# assuming the cursor is positioned appropriately.
def reputs(str = '')
  puts "\e[0K" + str
end

# Clear the screen
def clear_screen!
  print "\e[2J"
end

# Moves cursor to the top left of the terminal
def move_to_home!
  print "\e[H"
end

# Flushes the STDOUT buffer.
# By default STDOUT is only flushed when it encounters a newline (\n) character
def flush!
  $stdout.flush
end