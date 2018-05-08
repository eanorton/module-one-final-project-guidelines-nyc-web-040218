# $run_program = true

valid_commands = ["movies", "movie", "books", "book", "shows", "show", "authors", "author", "games", "game"]

def no_rec_error_msg
  puts "I'm sorry, it looks like there are no recommendations in that category! Please try again!\n\n**************\n\n"
end

def invalid_input
  puts "I'm sorry, that is not a valid command! Please try again! \n\n**************\n\n"
end

def welcome
  puts "Welcome to the Recommendation Machine! You can see a list of recommendations based off of Movies, Music, Books, Authors, TV Shows, or Games!"
end

def get_interest_from_user
  puts "What are you interested in?"
  interest = gets.chomp
end

def what_type?(h)
  loop do
    puts "What type of recommendations would you like to see? You can display: movies, music, books, authors, shows, games, or all recommendations! You can also exit at any time by typing EXIT."
    puts "\n**************"
    puts "\nEnter category:"
    response = gets.chomp
    down_response = response.downcase

    if down_response == "exit"
      puts
      bye = ["Byeeeeee", "Bye Felicia", "See ya!", "auf Wiedersehen!"]
      puts bye.sample
      break

    elsif down_response == "movies" || down_response == "movie"
      if h["movie"] == nil
        puts
        no_rec_error_msg
      else
      puts h["movie"]
    end
  end

    if down_response == "books" || down_response == "book"
      if h["book"] == nil
        puts
        no_rec_error_msg
      else
        puts h["book"]
      end
    end

    if down_response == "authors" || down_response == "author"
      if h["author"] == nil
        puts
        no_rec_error_msg
      else
        puts h["author"]
      end
    end

    if down_response == "shows" || down_response == "show"
      if h["show"] == nil
        puts
        no_rec_error_msg
      else
        puts h["show"]
      end
    end

    if down_response == "games" || down_response == "game"
      if h["game"] == nil
        puts
        no_rec_error_msg
      else
        puts h["game"]
      end
    end

    if down_response == "all"
      h.each do |key,value|
        puts key.upcase
        puts value
      end
    end

    # if valid_commands.!include?(down_response)
    #   invalid_input

  end
end
# def display_results_by_type_to_user(organized_hash)
#   "Based on your search, we recommend the following:"
# end
