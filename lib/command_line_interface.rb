def help

end

def welcome
  puts "Welcome to the Recommendation Machine! You can see a list of recommendations based off of Movies, Books, Authors, TV Shows, or Games!"
end

def get_interest_from_user
  puts "What are you interested in?"
  interest = gets.chomp
  link_with_user_input(interest)
end
