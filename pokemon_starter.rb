def say(name, statement)
  if name
    puts "#{name} : #{statement}"
  else
    puts statement
  end
end

def ask_question(question, options)
  say nil, question
  say "Options", options
  gets.chomp.downcase.gsub(" ","")
end

def handle_starter(starter)
	case starter
  when "rowlet"
		p "Kamui: It's so shperical!!!"
	when "litten"
		p "Kamui: Dude this pokemon is so lit it's FIYA!"
	when "popplio"
		p "Kamui: This one is a playful little trickster."
	when "pikachu"
		p "ERMAHGERD!! PERKACHUR!!!"
  else
    p "I'm sorry. We do not have that pokemon for your to choose as a starter."
  end
end
puts "Pokemon Sun"
puts "Welcome to the Alola Region!"
puts "I'm Prof. Kamui!"
puts "Kamui: Pokemon have been kind creatures that are welcome to everday life!"

puts "Kamui: Please, tell me a little bit about yourself."
#Question 1
puts "Kamui: Press 1 if you are a boy or press 2 if you are a girl."
gender = gets.chomp.to_s

  if gender == 1.to_s
    puts "Kamui: That's great to hear!"
  elsif gender == 2.to_s
    puts "Kamui: That's swell!"
  else
    puts "Kamui: No worries, we can skip that question for later."
end
#Question 2
#ask for name
valid_confirmation = "y"
begin
  puts "Kamui: What's your name?"
  #take user input
  name = gets.chomp.capitalize.gsub(" ","")
  #display user input
  puts "Kamui: Your name is #{name} is that right?"
  name_confirmation = gets.chomp.downcase.to_s
end until name_confirmation == "y"
#if y --- return name
#if n --- reprompt for name
puts "Kamui: Hi! Nice to meet you #{name}!"

puts "Kamui: And now... I'm going to let you choose your starter!"

valid_pokemon =["Rowlet","Litten", "Popplio", "Pikachu"]
begin
  starter = ask_question("Kamui: Who do you wish to choose as your partner?", " Rowlet, Litten, Popplio, Pikachu")
  handle_starter(starter)

end until valid_pokemon.include?(starter.capitalize)

puts "Kamui: Your journey with your new Pokemon awaits!!"
