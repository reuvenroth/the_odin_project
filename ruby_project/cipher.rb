def cipher(string, num)
	caesar = ""
	string.each_byte do |c|
		#puts c.chr #uncomment to log each char
		case c
		when (65..90), (97..122)
			num -= 26 while num > 25
			shift = c + num
			shift > 90 && shift < 97 || shift > 122 ? shift -= 26 : nil

			caesar += shift.chr
		else
			caesar += c.chr
		end
	end
	puts "Your code is #{caesar}."
end

puts "Please type some text for encoding:\n"
string = gets.chomp

tries ||= 3
begin
	puts "\nHow much shall each character be moved? (Number please):\n"
	num = gets.chomp
	num = Integer(num)
	puts cipher(string, num)
rescue
	puts "\nPlease only enter a number.\n"
	if (tries -= 1) > 0
		retry
	else
		puts "\nExiting program. Restart to try again"
	end
end

#--Pseudocode--#
# get string from user √
# get shift number from user √
# each character is shifted by the number √
	# iterate through the string √
	# shift each character by the number √
	# if shift goes past Capital or lowercase range √
		# wrap to beginning of char range √
		# keep shifting until done √
# put the string to screen √