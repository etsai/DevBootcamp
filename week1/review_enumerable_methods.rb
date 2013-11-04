# Solution for Challenge: P2: Enumerables. Started 2013-08-18T23:08:33+00:00

# Definitions

# Array#map
# - map will return a new array with the results of applying the block for every element in the first array. The method collect could also be used for map.

# Array#inject
# - inject and reduce will the take combine all the elements in the array by applying the specificed action from the block to produce a new value, using an accumulator and the element itself.

# Array#select
# - select or find_all will return an array that contains all the elements which do not return false for the block it is passed through.

#related Array#reject
# - which will return an array of elements which do return false when passed through the block.

# yield
# - can be used in a method which will process a block provided.

# Array#each_with_index
# - will call a block with the arguments of the item and the index. This can easily be used to make arrays into hashes.

# Array#minmax_by
# - returns two elements in an array with the min and max values for the given block.

# Part 2

class Array
  def my_map
    new_array = []
    self.each do |i|
      new_array << yield(i)
    end
    new_array
  end

  def my_select
    new_array = []
    self.each do |i|
      new_array << i if yield(i) == true
    end
    new_array
  end

  def my_inject
  end

end

p [1,2,3,4].my_map { |i| i -= 1 } == [0,1,2,3]
p [1,2,3,4].my_select { |i| i.even? } == [2,4]

# Enumberable methods with eyes closed

1. map
2. inject & reduce
3. select
4. reject
5. zip
6. reject
7. minmax & minmax_by
8. each_with_index
9. each
10. min & max
11. match
12. grep





