require_relative "../config/environment"
# require_relative "../lib/api_communicator.rb"
# require_relative "../lib/command_line_interface.rb"
# require_relative "../lib/methods.rb"

require 'pry'


input = get_interest_from_user
url_formatted_input = user_input(input)
unorganized_hash = link_with_user_input(url_formatted_input)
h = return_hash_of_recommendation_titles(unorganized_hash)
what_type?(h)

#display_results_by_type_to_user(organized_hash)
