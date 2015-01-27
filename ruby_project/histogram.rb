=begin
#codecademy's version
puts "Text please: "
text = gets.chomp

words = text.split(" ")
frequencies = Hash.new(0)
words.each { |word| frequencies[word] += 1 }
frequencies = frequencies.sort_by {|a, b| b }
frequencies.reverse!
frequencies.each { |word, frequency| puts word + " " + frequency.to_s }
=end

#my version with "Tim Toady", "TMTOWTDI"
#"There's more than one way to do it"

puts "Text, please:"
text = gets.chomp

words = text.split(" ")
frequencies = Hash.new(0)
words.each do |word| frequencies[word] += 1 end
frequencies = frequencies.sort_by {|word, count| count}
frequencies.reverse!
frequencies.each do |x, y| puts "#{x} #{y}" end