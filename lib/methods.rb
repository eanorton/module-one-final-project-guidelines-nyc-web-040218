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
