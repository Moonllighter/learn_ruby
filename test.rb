# puts "What's your name"
# name = gets 
# puts "Welcom #{name} "

# random = rand(1..100)
# puts "Get integer 1-100"

# 11.times do |i|

# user_integer = gets


#  if random == user_integer.to_i
# puts "Good job #{name} ! Your guess was in #{i+1} guesses"
# break 

# elsif random > user_integer.to_i
    
#     puts "Oops. Your guess was LOW"
# else
#      puts "OOps. You guess was HIGH"

# end
# if (i+1)>10
#     puts "Sorry. You didn't get my number. My number was #{random}"
# end
# end 



puts 'What is your name'
inputed_name = gets
puts "Welcome #{inputed_name}"

random = rand(1..100)
puts 'Get integer from 1 to 100'

is_guessed = false

10.times do |i|
  attempt      = i + 1
  user_integer = gets.to_i

  if random == user_integer
    puts "Good job #{inputed_name} ! Your guess was in #{attempt} guesses"
    is_guessed = true
    break
  elsif random > user_integer
    puts 'Oops. Your guess was LOW'
  else
    puts 'OOps. You guess was HIGH'
  end
end

if !is_guessed
  puts "Sorry. You didn't get my number. My number was #{random}"
end