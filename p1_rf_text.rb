#methods for universal options

def check_inventory(hash)
  puts "You check in your backpack and see the following:"
  hash.each { |item, desc| puts "#{item}:" + " "+ "#{desc}" }
  puts "*" * 50
end

def help_command
  puts "You slack Auston.\n He responds \"RTFM n00b\". \n Jk, typing LOOK most places and objects will give you some options.\n Remember to get the coffee, the light, and the charger.\n Type INVENTORY to see what you currently have.\n LEAVE will get you out of most areas."
  puts "*" * 50
end



# Intro sequence for game
def game_intro
  puts "This weekend is your first big Wyncode project.\n You decide to come in on Saturday night and crank it out. "
  sleep(1)
  puts "Press Enter to wake up."
  wake = gets.chomp
  puts "ZzZzZzZzZzZzZzZzZz......"
  sleep(2)
  puts "You wake up in a daze."
  sleep(2)
  puts "You remember coming in to start your project, but then getting carried away doing your own retro-retroactive with the leftover beers in the fridge."
  sleep(2)
  puts "You vaugely recall tripping over some wires and the power going out."
  sleep(2)
  puts" It is pitch dark..."
  sleep(1)
  puts "Press enter to continue"

  enter = gets.chomp
  system("clear")
  puts "You manage to find your way to the door in the dark room and stumble out into the street.\n Thankfully it is only early Sunday morning and you still have time to finish your project."
  sleep(2)
  puts "Time to get started. To get this project done you are going to need three things."
  sleep(2)
  puts "1) COFFEE - You can't work without a cup of black gold first."
  sleep(2)
  puts "2) CHARGER - You check your laptop and it is totally dead."
  sleep(2)
  puts "3) LIGHT SOURCE - It is dark in the Wyncode classroom. You need some light to find your charger."
  puts "Press enter to continue"
  enter = gets.chomp
  system("clear")
  puts "#Tips - If you forget what is going on try typing HELP."
end
 #Ending game sequence
def game_end
  system("clear")
  puts "You did it! You have everything you need to complete your project.\n You rush to General Provision and grab your favorite seat"
  sleep(1)
  puts "With laptop charging, headphones in, and coffee chugged you work feverishly through the remainder of the weekend until your project is complete."
  sleep(2)
  puts "Good job! Maybe start a little earlier next time though...."
  win = gets.chomp
  50.times do print "<>" end
end



#special events
$event_counter = 0
def event_juha
  system("clear")
  sleep(1)
  puts "You hear a screeching sound and barely dive out of the way!!!\n Juha Tokyo drifts around the corner in a go-kart and dissapears from sight."
  puts "*" * 50
  $event_counter += 1
end
