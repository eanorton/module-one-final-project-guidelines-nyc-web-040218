# $run_program = true


def error_msg

  puts "Command not recognized!"
  puts "for more info"
end

def welcome
  puts "Welcome to the Recommendation Machine! You can see a list of recommendations based off of Movies, Music, Books, Authors, TV Shows, or Games!"
end

def get_interest_from_user
  puts "What are you interested in?"
  interest = gets.chomp
end

def what_type?
  puts "What type of recommendations would you like to see? You can display: movies, music, books, authors, shows, games, or all recommendations! You can also exit at any time by typing EXIT."
  # while $run_program == true
    puts "**************"
    puts "\nEnter category:"
    response = gets.chomp
    down_response = response.downcase
    if down_response == "exit"
      puts
      # $run_program = false
      bye = ["Byeeeeee", "Bye Felicia", "See ya!", "auf Wiedersehen!"]
      puts bye.sample
      break

    # elsif down_response == "movie" && h["movie"] == nil
    #     puts "Sorry! We don't seem to have any movie recommendations!"
    #     what_type?
    # elsif down_response == "movie"
      h = return_hash_of_recommendation_titles(unorganized_hash)
        puts h["movie"]
      end

    # elsif down_response == "book" && h["book"] == nil
    #     puts "Sorry! We don't seem to have any movie recommendations!"
    #     what_type?
    # elsif
    #     puts h["book"]
    #   end
    #
    # elsif down_response == "author" && h["author"] == nil
    #     puts "Sorry! We don't seem to have any author recommendations!"
    #     what_type?
    # elsif
    #     puts h["author"]
    #   end
    #
    # elsif down_response == "shows" && h["show"] == nil
    #     puts "Sorry! We don't seem to have any show recommendations!"
    #     what_type?
    # elsif
    #     puts h["show"]
    #   end
    #
    # elsif down_response == "game" && h["game"] == nil
    #     puts "Sorry! We don't seem to have any game recommendations!"
    #     what_type?
    # elsif
    #     puts h["game"]
    #   end
    #
    # elsif down_response == "all"
    #   puts h
    # else
    # "Hmm... I'm not recognizing that. Try again"
    # what_type?
  end
end

# def display_results_by_type_to_user(organized_hash)
#   "Based on your search, we recommend the following:"
# end
