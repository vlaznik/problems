# Problem 2
#
# Return the largest number from the array, without using max. Make the tests pass. Do not use max, for or while.

def max(items)
  items.each do |val|
    if val > itemsindex + 1]
      items.delete(items[val.index + 1])
    else
      items.delete(val)
    end
  end
end

puts max([1,2,3,4,5,6]) == 6
puts max([4,5,6,1,2,3]) == 6
puts max([9,8,7,6,5,3,1]) == 9
