#Ch 4 of Pine Learn to Program: Mix it up!

#Meet & greet a user by their name
puts 'Hello there, and what\'s your name?'
name = gets.chomp.downcase.capitalize
puts 'Your name is ' + name + '? What a lovely name!'
puts 'Pleased to meet you, ' + name + '. :)'

#Ask their favorite number & suggest a better one
puts 'So what\'s your favorite number?'
number = gets.chomp
#Interpolated strings with ruby code must have double quotes
puts "Oh, you like " + number + "? Well, #{number.to_i + 1} would seem more to your liking since it's even bigger, is that correct?"
answer = gets.chomp
puts "#{answer.downcase.capitalize}? Either way, enjoy your day!"