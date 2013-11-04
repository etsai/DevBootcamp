# Solution for Challenge: P1: Methods and Recursion - Numbers in Words. Started 2013-08-13T21:10:05+00:00

# Part 1
# Psudocode
# Pass in a number.
# Is the number less than 20
# If it is, pass the number through the hash[index]
# and return a value.

# If it is greater than 20.
# Divide by 10.
# Take that result * 10 and pass through then ten's hash
# Then take the number and do module 10. Take that number and
# pass thorugh the ones hash.

@ones = {
     1 => "one",
     2 => "two",
     3 => "three",
     4 => "four",
     5 => "five",
     6 => "six",
     7 => "seven",
     8 => "eight",
     9 => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen",
    }

@tens = {
        20 => "twenty",
        30 => "thirty",
        40 => "fourty",
        50 => "fifty",
        60 => "sixty",
        70 => "seventy",
        80 => "eighty",
        90 => "ninety",
        }

def in_words(num)
  if num < 20
    @ones[num]
  else
    "#{@tens[(num/10)*10]} #{@ones[num%10]}"
  end
end

# Driver Code
p in_words(4)         # => "four"
p in_words(27)       # => "twenty seven"
p in_words(92)       # => "ninety two"
