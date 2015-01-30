def caesar_cipher(string, shift)
	@string = string
	@shift = shift
end

=begin
	
To do:
	--get a string as input
	--convert the string to 
	
=end

=begin
other's solutions:
1)
def caesar_cipher(input_string, shift_factor)
  positions = input_string.unpack('C*')
  shifted_positions = positions.map do |pos|
    case pos
      when (65..90), (97..122)
        shifted = pos + (shift_factor % 26) # use % 26 to account for shift factors over 26
        if (shifted > 90 && shifted < 97) || (shifted > 122) # loop around
          shifted = shifted - 26
        end
        pos = shifted
      else
        pos # ignore non-alphabet chars
    end
  end
  result_string = shifted_positions.pack('C*')
  puts result_string
end

puts "Input string:"
string_to_encrypt = gets.chomp
puts "Shift factor:"
shift_factor = gets.chomp.to_i
puts "Caesar Cipher:"
caesar_cipher(string_to_encrypt, shift_factor)

2)	
def cipher(word, n)
	new_word = ""
	word.each_char do |i|
		n.times do
			if(i == "z")
				i = "a"
				next
			elsif(i == "Z")
				i = "A"
				next
			end
			i.next!
			i == "%" ? i = " " : ""
		end
		new_word += i	
	end
	puts new_word
end
cipher("What a string!", 5)
	
3)
def caesar_cipher(code, offset = 0)
  code.downcase!
  result = ''
  code.split('').each do |letter|
    result = result + shiftLetter(letter, offset.to_i)
  end
  result
end

def shiftLetter(letter, offset)
  (letter.ord + offset > 122) ? (letter.ord + offset - 26).chr : (letter.ord + offset).chr
end

puts "Enter code to encrypt"
code = gets.chomp
puts "Enter offset"
shift = gets.chomp
begin
  shift = Integer(shift)
  puts caesar_cipher(code, shift)
rescue
  puts 'shift value is not an integer'
end

4)
def caesar_cipher(string,num)
	string.each_byte { |i|
	case i when (65..90),(97..122) then offset = i + num
	(offset > 90 && offset < 97 ? offset = offset - 26 : nil) else offset = i end
	print offset.chr }
end
string='What a string!'
caesar_cipher(string,5)

5)
=end