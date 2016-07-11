#Hashes. Keeps track of obtained items and various descriptions of places.
require './p1_rf_text.rb'

status = "You still need to finish your project! You are going to need some coffee and a fully charged computer to get it done."
inv = {
  :laptop => "The battery is dead. The charger is in the classroom."
}
locations = {
  "Brew" => {
    "Area" => "Photographs and paintings hang, seemingly at random, throughout the cafe. A massive wall of books is the backdrop for the hipster barista who waits patiently to take your order.",
    "Barista" => "You take a look at the Barista. She is heavily inked and highly caffeinated.",
    "Menu" => "You can't even pronounce the names, but your wallet hurts just looking at the menu. Just close your eyes and BUY some COFFEE.",
  },
  "GP" =>    {
    "skeleton" => "There is a skeleton wearing a Wyncode shirt. You dust off its laptop and see an infinite loop running on his computer. The code reads...\nloop do\n code\ndrink coffee\nend \n eat_food = false \n sleep = false",
    "Area" => "This office space is furnished mostly with wooden tables and chairs.\n You notice a rusty lamp in one corner.\n There is a faint glow of one laptop in the loft. Upon further inspection you see a skeleton hunched over a Macbook.",
    "lamp" => "The lamp glows brightly. You should probably\n GET LAMP",
  },
  "Class" => {
    "Area" => "You can see the outline of the room from the glow of your lamp. \n It is dark but you can make out a laptop charger hanging from of one of the outlets.",
    "Charger" => "Your computer charger is still plugged in where you left it. You should probabbly GET CHARGER"
  },
}

#Game begins
game_intro

# inv.include?("coffee" && "charger")  This did not work
until inv.include?("coffee") && inv.include?("charger") do
  puts status
  puts "Choose one of the following places to go:"
  locations.each { |key, value| puts "#{key}" }
  puts "Where would you like to go?"
  place = gets.chomp.downcase


  case place
  when "inventory", "inv"
    check_inventory(inv)
  when "help", "halp"
    help_command

  when "class", "go class"
    system("clear")
    if inv.include?("lamp")
      loop do
        puts "You are in the darkened classroom. The faint glow of your lamp illuminates the surrounding area. Try LOOKing around."
        class_choice = gets.chomp.downcase

        case class_choice
        when "inventory", "inv"
          puts "You check in your backpack and see the following:"
          inv.each { |item, desc| puts "#{item}:" + " "+ "#{desc}" }
        when "help"
          help_command
        when "look"
          puts "What would you like to look at?"
          puts "You can check out the following:"
          locations["Class"].each { |key, value| puts "#{key}" }
          look_choice = gets.chomp.downcase
          case look_choice
          when "area", "look area"
            puts locations["Class"]["Area"]
          when "charger", "look charger"
            puts locations["Class"]["Charger"]

          else
            puts "Nothing special when you look at #{look_choice}"
          end
        when "get charger"
          puts "By the light of your lamp, you slowly make your way to the charger, wading through glass bottles strewn about in floor.\n You unplug the charger and put it in your backpack.\n You have the power!"
          inv["charger"] = "A laptop charger"
          locations["Class"].delete("Charger")
        when "leave"
          puts "You walk out into the street."
          sleep(1)
          system("clear")
          break
        end
      end
    else
      puts "It is pitch dark\n You won't be able to do anything here without a light."
    end


  when "brew", "go brew"
    system("clear")
    puts "You walk to Brew, guided by the sweet aroma of coffee."

    loop do
      puts "You are in Brew. What would you like to do? Maybe take a LOOK around."
      brew_choice = gets.chomp.downcase
      case brew_choice

      when "help", "halp"
        help_command
      when "look"
        puts "What would you like to look at?"
        puts "You can check out the following:"
        locations["Brew"].each { |key, value| puts "#{key}" }
        look_choice = gets.chomp.downcase
        case look_choice
        when "area", "look area"
          puts locations["Brew"]["Area"]
        when "barista", "look barista"
          puts locations["Brew"]["Barista"]
        when  "menu", "look menu"
          puts locations["Brew"]["Menu"]
        else
          puts "Nothing special when you look at #{look_choice}"
        end

      when "inventory"
        check_inventory(inv)

      when "buy coffee", "buy", "coffee"
        puts "You empty your wallet onto the counter.\nAfter a few minutes of high pitched coffee grinding, volcanic bursts of steam, and meticulous pouring\n you are presented with a hot iced triple mocha choca latte made with 110% milk.\nYou feel more energized already!"
        inv["coffee"] = "A delicios cup of black gold"
        status = "You still need to finish your project! You are going to need a fully charged computer to get it done."
      when "leave"
        puts "You walk out of brew and into the street"
        sleep(2)
        system("clear")
        break

      end
    end

  when "gp"
    system("clear")
    puts "You walk to GP, enter your key code and step inside."
    loop do puts "You are inside General Provision. What would you like to do? Not sure? Take a LOOK."
      gp_choice = gets.chomp.downcase

      case gp_choice

      when "help"
        help_command

      when "look"
        puts "What would you like to look at?"
        puts "You can check out the following:"
        locations["GP"].each { |key, value| puts "#{key}" }
        look_choice = gets.chomp.downcase
        case look_choice
        when "skeleton", "look skeleton"
          puts locations["GP"]["skeleton"]
        when "area", "look area"
          puts locations["GP"]["Area"]
        when "lamp", "look lamp"
          puts locations["GP"]["lamp"]
        else
          puts "Nothing special when you look at #{look_choice}"
        end

      when "inventory"
        check_inventory(inv)
      when "get lamp"
        puts "You pick up the rusty lamp and flick the switch\nIt glows brightly"
        inv["lamp"] = "The lamp glows with a warm light."
        locations["GP"]["Area"] = "This office space is furnished mostly with wooden tables and chars.\n There is a faint glow of one laptop in the loft. Upon further inspection you see a skeleton hunched over a Macbook."
        locations["GP"].delete("lamp")
      when "leave"
        puts "You walk out of General Provision and into the street"
        sleep(2)
        system("clear")
        if $event_counter == 0
          event_juha
        end

        break
      end
    end
  else
    puts "You receive a message from Gabe on Slack:\n
    Not sure what you meant there. Possibly a typo? Maybe you should spend more time on typing.io."
    sleep(1)
  end
  sleep (2)
end

game_end
