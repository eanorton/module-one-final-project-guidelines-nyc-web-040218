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
  puts "\nHey woah what the who the huh?! Who are you?! Wanna check this shit out? What's your name?\n"
  name = gets.chomp.downcase
  x = User.find_or_create_by(name: name)
  puts "\nHi, #{x.name.capitalize}, your id is #{x.id}!".blue.bold
  x.id
end

def save(input, user_id)
  user_interest = UserInterest.create(query_title: input, user_id: user_id)
end
