#floating-point numbers
puts 1.0 + 2.0
puts 2.0 * 3.0
puts 5.0 - 8.0
puts 9.0 / 2.0

#integers
puts 1 + 2
puts 2 * 3
puts 5 - 8
puts 9 / 2

#parenthesis
puts 5 * (12-8) + -15
puts 98 + (59872 / (13*8)) * -52

#A Few Thing to Try
#hours in a year
puts 24 * 365

#minutes in a decade
puts 60 * 24 * 365 * 10

#seconds old
puts 1 * 60 * 60 * 24 * 365 * 27

# 1204 million secs old is:
puts 1204000000.0 / 60 / 60 / 24 / 365

# (using variables not "numbers")
sec = 1
min = 1
hour = 1
day = 1
year = 1
min_sec = sec * 60
hour_sec = min_sec * 60
day_sec = hour_sec * 24
year_sec = day_sec * 365
day_hour = hour * 24
year_hour = day_hour * 365
puts "Seconds in a year: #{year_sec}"