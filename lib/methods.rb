require 'pry'

def return_hash_of_recommendation_titles(unorganized_hash)
#   h = {}
#   unorganized_hash.each do |key, value|
#     value.each do |key, value|
#       if key == :Results
#         value.each do |array|
#           array.each do |data_type, results|
#             if data_type == :Name
#               h[results] = array[:Type]
#             end
#           end
#         end
#       end
#     end
#   end
#   h
  h = {}
  unorganized_hash["Similar"]["Results"].each do |hash|
    h[hash["Type"]] ||= []
    h[hash["Type"]] << hash["Name"]
  end
  h
end
