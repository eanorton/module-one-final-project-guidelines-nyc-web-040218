require 'pry'

def return_hash_of_recommendation_titles(unorganized_hash)
  h = {}
  unorganized_hash["Similar"]["Results"].each do |hash|
    h[hash["Type"]] ||= []
    h[hash["Type"]] << {hash["Name"] => hash["wTeaser"] }
  end
  # unorganized_hash["Similar"]["Results"].each do |key, value|
  #   if key == "wTeaser"
  #     h[key] = value
  #   end
  # end
  h
end

def create_user
  puts "\nWhat's your name?\n"
  name = gets.chomp.downcase
  user_instance = User.find_or_create_by(name: name)
  puts "\nHi, #{user_instance.name.capitalize}, your id is #{user_instance.id}!".blue.bold
  user_instance
end

# def save(input, user_id)
#   user_interest = UserInterest.create(query_title: input, user_id: user_id)
# end

# def recommendation_save(, user_id)
#
# end
