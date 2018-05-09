require 'rest-client'
require 'json'
require 'pry'

def user_input(interest)
  x = interest
  y = interest.split(" ")
  z = y.join("+")
  z #e.g. game+of+thrones
end

#just for movies
def link_with_user_input(interest)
  data_url_link = RestClient.get("https://tastedive.com/api/similar?q=#{user_input(interest)}&k=307612-Studentp-0YZ6OAO1&info=1&limit=50")
  JSON.parse(data_url_link)
end
