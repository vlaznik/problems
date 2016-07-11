possible_options = [
  "add person",
  "remove person",
  "list person",
  "quit"
]

people =[]
response = ""

until response == 4.to_s
  p "If you would like to add, press 1; To remove, press 2; to list, press 3; otherwise press 4 to quit."

  response = gets.chomp.to_s
  if response == 1.to_s
    p "Type in the name of the person you wish to add."
    people << gets.chomp
.downcase!  elsif response == 2.to_s
    p "Who you wish to remove?"
    people.delete(gets.chomp.downcase!)
  elsif response == 3.to_s
    puts people
  elsif response == 4.to_s
    p "Thank you for using our directory."
  else
    p "please input 1, 2, 3, or 4 only."
  end
end
print people
