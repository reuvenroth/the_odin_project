=begin
puts "EventManager Initialized!"

#contents = File.read "event_attendees.csv"
#puts contents

lines = File.readlines "event_attendees.csv"
#lines.each do |line|
#	puts line
#end

#=begin
lines.each do |line|
	columns = line.split(",")
	puts columns
end

lines.each do |line|
	columns = line.split(",")
	name = columns[]
	puts name
end

lines.each do |line|
	next if line == " ,RegDate,first_Name,last_Name,Email_Address,HomePhone,Street,City,State,Zipcode\n"
	columns = line.split(",")
	name = columns[2]
	puts name
end

row_index = 0
lines.each do |line|
	row_index += 1
	next if row_index == 1
	columns = line.split(",")
	name = columns[2]
	puts name
end

lines.each_with_index do |line, index|
	next if index == 0
	columns = line.split(",")
	name = columns[2]
	puts name
end
#=end

#--Built in Ruby CSV Parser--#
require "csv"
puts "EventManager initialized."

#contents = CSV.open "event_attendees.csv", headers: true
#contents.each do |row|
#	name = row[2]
#	puts name
#end

contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
#contents.each do |row|
#	name = row[:first_name]
#	puts name
#end

=begin
#contents.each do |row|
#	name = row[:first_name]
#	zipcode = row[:zipcode]
#	puts "#{name} #{zipcode}"
#end

#--Pseudocode!--#
contents.each do |row|
	name = row[:first_name]
	zipcode = row[:zipcode]

	# if the zip code is exactly five digits, assume that it is ok
	# if the zip code is more than 5 digits, truncate it to the first 5 digits
	# if the zip code is less than 5 digits, add zeros to the front until it becomes five digits

	puts "#{name} #{zipcode}"
end

#--Solutions Options--#

* Use a while or until loop to prepend zeros until the length is five
* Calculate the length of the current zip code and add missing zeros to the front
* Add five zeros to the front of the current zip code and then trim the last five digits
* Use String#rjust to append zeros to the front of the string.

contents.each do |row|
	name = row[:first_name]
	zipcode = row[:zipcode]

	if zipcode.length < 5
		zipcode = zipcode.rjust 5, "0"
	elsif zipcode.length > 5
		zipcode = zipcode[0..4]
	end

	puts "#{name} #{zipcode}"
end

#--Above solution doesn't resolve nil cases. Fixed below.--#

contents.each do |row|
	name = row[:first_name]
	zipcode = row[:zipcode]

	if zipcode.nil?
		zipcode = "00000"
	elsif zipcode.length < 5
		zipcode = zipcode.rjust 5, "0"
	elsif zipcode.length > 5
		zipcode = zipcode[0..4]
	end

	puts "#{name} #{zipcode}"
end

#--Above works though isn't as clear code as a seperate method below.--#

=end

require "csv"
=begin
def clean_zipcode(zipcode)
	if zipcode.nil?
		"00000"
	elsif zipcode.length < 5
		zipcode.rjust(5,"0")
	elsif zipcode.length > 5
		zipcode[0..4]
	else
		zipcode
	end
end
=end
#--Refactoring clean_zipcode method--#

def clean_zipcode(zipcode)
	zipcode.to_s.rjust(5,"0")[0..4]
end

puts "EventManager initialized."

contents = CSV.open 'event_attendees.csv', headers: true, header_converters: :symbol

contents.each do |row|
	name = row[:first_name]

	zipcode = clean_zipcode(row[:zipcode])

	puts "#{name} #{zipcode}"
end