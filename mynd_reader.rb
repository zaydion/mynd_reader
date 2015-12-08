def say(statement)
	puts statement
end

def ask_question(question)
	say question
	gets.chomp.downcase.chr
end




game_on = true
while game_on

	say "Muahahaha... welcome to Mynd Reader"

	puts "=" * 50

	puts "          _                  _
	_____ _ _ ___ _| |   ___ ___ ___ _| |___ ___
	|     | | |   | . |  |  _| -_| .'| . | -_|  _|
	|_|_|_|_  |_|_|___|  |_| |___|__,|___|___|_|
	   |___|
	"

	puts "=" * 50

	puts "just a warning.. your mind may be blown.."
	puts "..."
	sleep(1)
	puts "Alright so, let's begin!"
	puts "Think of a number from (1-10)... once you have that number, MEMORIZE(not type) it and press ENTER."
	input = gets.chomp
# until input.include?("yes") # trying to add a way to exit or loop program
puts "..."
sleep(2)


# puts chosen_operator
# just to check if chosen operator matches output

puts "(small chuckle).. let the games begin.. "

puts "..."
sleep(2)


num_of_directions = rand(4..10)

current_num = 0

# picks how many times we perform math
while num_of_directions >= 0
	operators = ["add", "subtract"]


if current_num > 5
	chosen_operator = operators.sample
else
	chosen_operator =  "add"
end


case chosen_operator
when "add"
	addition_num = rand(1..25)
	ask_question("add #{addition_num} to your current number.. once you've calculated, press ENTER")

	current_num += addition_num
when "subtract"
	sub_num = rand(1..15)
	ask_question("subtract #{sub_num} from your current number.. once you've calculated, press ENTER")

	current_num -= sub_num

  	end
  	num_of_directions -= 1

  end

  if num_of_directions <= 0
  	ask_question("Alright.. now let's do this... take the number you have in your head and subtract it by the number you picked in the beginning.. when you're ready for some magic.. press ENTER")

  	puts "Good good.. ok let me think... "

  	puts "..."
  	sleep(rand(1..3))


  	flag = true
  	flag_2 = true
  	flag_3 = true
  	while flag
  		puts "is the number you currently have in your head #{current_num}? (yes/no)"
  		input = gets.downcase.chomp.chr


  		if input == "y"
  			flag = false
  			puts "(;"

  				puts "would you like to play again? (yes/no)"
  				user_answer = gets.downcase.chomp.chr

  				while flag_2
  					if user_answer  == "y"
  						 flag_2 = false
  						 game_on = true
  						 num_of_directions = 0
  					elsif user_answer == "n"
  						flag_2 = false
  						puts "Oh ok.. This was fun.. sorry if I scared you."
  						game_on = false
  					else

  						puts "You know, I'm fan of direct answers.. please answer with either a yes or a no (:"
  							user_answer = gets.chomp.downcase.chr
  						end
  					end

  				elsif input == "n"
  					flag = false
  					puts "ok so either your math isn't up to par.. or I'm wrong.. but I'm a mind reading computer so... how about we try again? (yes/no)"
  					user_answer = gets.downcase.chomp.chr

  					while flag_3
  						if user_answer == "y"
  							 flag_3 = false
  							 game_on = true
  							 num_of_directions = 0
  						elsif user_answer == "n"
  							flag_3 = false
  							puts "hey don't worry.. there are plenty of careers where you don't need math."
  							game_on = false
  						else
  							puts "You know, I'm fan of direct answers.. please answer with either a yes or a no (:"
  								user_answer = gets.chomp.downcase.chr
  							end
  						end

  					else
  						puts "You know, I'm fan of direct answers.. please answer with either a yes or a no (:"

  					end
  				end
  			end
  		end

