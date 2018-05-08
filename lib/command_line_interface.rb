# $run_program = true


def no_rec_error_msg
  puts "I'm sorry - it looks like there are no recommendations in that category! Please try again or fuck off breh\n\n**************\n\n"
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

    elsif down_response == "movies"
      if h["movie"] == nil
        puts
        no_rec_error_msg
      else
      puts h["movie"]
    end
  end

    if down_response == "books"
      if h["book"] == nil
        puts
        no_rec_error_msg
      else
        puts h["book"]
      end
    end

    if down_response == "author"
      if h["author"] == nil
        puts
        no_rec_error_msg
      else
        puts h["author"]
      end
    end

    if down_response == "shows"
      if h["show"] == nil
        puts
        no_rec_error_msg
      else
        puts h["show"]
      end
    end

    if down_response == "games"
      if h["game"] == nil
        puts
        no_rec_error_msg
      else
        puts h["game"]
      end
    end 

    # elsif down_response == "all"
    #   "Hmm... I'm not recognizing that. Try again"
    #   what_type?
  end
end
# def display_results_by_type_to_user(organized_hash)
#   "Based on your search, we recommend the following:"
# end
