# Takes two numbers and returns the largest number.
def max(num1, *num2)
max_value = nil
if num1.class == Fixnum
  max_value = num1
end
  num2.each do | number |
    if number.class == Fixnum
      if max_value < number
        max_value = number
          end
        end
      end
    return max_value
  end
p max(1,2)

def test_max
  p max(1,2) == 2
  p max([1], [2]) == nil
  p max(40, 39) == 40
  p max({number: 1} == {number: 2}) == nil
  p max("1", "2") == nil
  p max(10, 1, 15) == 15
end
test_max
