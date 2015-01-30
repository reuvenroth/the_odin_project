movies = {
    living_torah: 5,
    ushpizin: 5
}

def input #method for gets.chomp
    gets.chomp.downcase
end

puts "To exit please type 'Quit' or 'Exit'"
puts 'Please type "add", "display", "update" or "delete".'
choice = input

case choice
when "add"
    puts "Movie Title please:"
    title = input.to_sym
    puts "How would you rate it?"
    rating = input.to_i
    if movies[title].nil?
        movies[title] = rating
        puts "Movie: '#{title.to_s.capitalize}' added with a Rating of #{rating}."
    else
        puts "That Movie already exists. Try updating it."
    end
when "update"
    puts "Movie Title please:"
    title = input.to_sym
    if movies[title].nil?
        puts "That Title doesn't exist. Please 'add' it."
    else
        puts "Your Movie was found. How would you rate it?"
        rating = input.to_i
        movies[title] = rating
        puts "Movie: '#{title.to_s.capitalize}' updated with a Rating of #{rating}."
    end
when "display"
    movies.each { |movie, rating| puts "#{movie}: #{rating}" }
when "delete"
    puts "Which Movie would you like to delete?"
    title = input.to_sym
    if movies[title].nil?
        puts "That Title doesn't exist. Please 'add' it."
    else
        movies.delete(title)
        puts "The Movie '#{title.to_s.capitalize}' has been deleted."
    end
when "exit", "quit"
    exit
else
    puts "Invalid choice."
end