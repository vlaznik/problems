puts "How much is the bill?"
bill = gets
puts "The bill is $#{bill}"

puts "Please input gratuity."
p tip = (bill.to_i * 0.20)
total = bill.to_i + tip

puts "The total is $#{total}"
