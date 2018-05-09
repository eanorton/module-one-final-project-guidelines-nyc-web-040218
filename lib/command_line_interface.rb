require 'colorize'
require 'artii'

valid_commands = ["movies", "movie", "books", "book", "shows", "show", "authors", "author", "games", "game"]

def no_rec_error_msg
  puts "I'm sorry, it looks like there are no recommendations in that category! Please try a different one!\n\n**************\n\n".red
end

def invalid_input
  puts "I'm sorry, that is not a valid command! Please try again! \n\n**************\n\n"
end

def welcome
  puts "Welcome to the Recommendation Machine! You can see a list of recommendations based off of Movies, Music, Books, Authors, TV Shows, or Games!"
end

def get_interest_from_user
  puts "\nWhat are you interested in?\n"
  interest = gets.chomp
end

def what_type?(h)
  loop do
    $i = 0
    puts "\nWhat type of recommendations would you like to see?\n\nYou can display all the titles by categories: <Movies>, <Music>, <Books>, <Authors>, <Shows>, <Games>, or <All>!\n\nYou can display more information for each title by typing in the corresponding number once you've selected a category.\n\nIf you would like to start a new search, simply type <New>.\n\nTo exit program, type <Exit>"
    puts "\n**************".green
    puts "\nEnter category:\n"
    response = gets.chomp
    down_response = response.downcase
    puts "\n"

    if h == {}
      puts "Sorry, there doesn't seem to be anything there. Please try a new search.".green
      $i += 1
      break
    end

    if down_response == "exit"
      bye = ["Byeeeeeeeeee", "Bye Felicia", "See ya!", "auf Wiedersehen!", "Tschüß", "Ciao!", "Bon voyage", "Wadaeaan"]
      puts bye.sample
      puts "\n"
      break

    elsif down_response == "movies" || down_response == "movie" #|| down_response is in the list of movies
      if !h.keys.include?("movie")
        puts
        no_rec_error_msg
      elsif h.keys.include?("movie")
        h.select do |key, value|
          if key == "movie"
            array = []
            value.select do |hash|
              array << hash.keys
            end
            array.flatten.each.with_index(1) do
              |element, i| puts "#{i}. #{element}"
            end
            loop do
              puts "If you would like more information about any title, just type in the respective number!"
              content_interest_num = gets.chomp
              if content_interest_num.class != Fixnum
                puts "Please enter a number!".red
                break
              end
              num = (content_interest_num.to_i - 1)
              if num > h.values[0].length || num < 0
                invalid_input
                break
              end
              puts "\n\n"
              synopsis = h.values[0][num].values.flatten.to_s
              puts synopsis.blue
            end
          end
        end
      end

  elsif down_response == "books" || down_response == "book"
    if !h.keys.include?("book")
      puts
      no_rec_error_msg
    else
      h.select do |key, value|
        if key == "book"
          array = []
          value.select do |hash|
            array << hash.keys
          end
          array.flatten.each.with_index(1){|element, i| puts "#{i}. #{element}"}
        end
      end
    end

    elsif down_response == "authors" || down_response == "author"
      if !h.keys.include?("author")
        puts
        no_rec_error_msg
      else
        h.select do |key, value|
          if key == "author"
            array = []
            value.select do |hash|
              array << hash.keys
            end
            array.flatten.each.with_index(1){|element, i| puts "#{i}. #{element}"}
          end
        end
      end

    elsif down_response == "music"
      if !h.keys.include?("music")
        puts
        no_rec_error_msg
      else
        h.select do |key, value|
          if key == "music"
            array = []
            value.select do |hash|
              array << hash.keys
            end
            array.flatten.each.with_index(1){|element, i| puts "#{i}. #{element}"}
          end
        end
      end

    elsif down_response == "shows" || down_response == "show"
      if !h.keys.include?("show")
        puts
        no_rec_error_msg
      else
        h.select do |key, value|
          if key == "show"
            array = []
            value.select do |hash|
              array << hash.keys
            end
            array.flatten.each.with_index(1){|element, i| puts "#{i}. #{element}"}
          end
        end
      end

    elsif down_response == "games" || down_response == "game"
      if !h.keys.include?("game")
        puts
        no_rec_error_msg
      else
        h.select do |key, value|
          if key == "game"
            array = []
            value.select do |hash|
              array << hash.keys
            end
            array.flatten.each.with_index(1){|element, i| puts "#{i}. #{element}"}
          end
        end
      end

    elsif down_response == "all"
      h.each do |key,value|
        puts key.upcase.colorize(:color => :green, :background => :blue)
        array = []
        value.select do |hash|
          array << hash.keys
        end
        array.flatten.each.with_index(1){|element, i| puts "#{i}. #{element}"}
      end

    elsif down_response == "new"
      $i += 1
      break


    else
      invalid_input

  end
  end
  if $i != 0
    input = get_interest_from_user
    url_formatted_input = user_input(input)
    unorganized_hash = link_with_user_input(url_formatted_input)
    h = return_hash_of_recommendation_titles(unorganized_hash)
    what_type?(h)
  end
end
# def display_results_by_type_to_user(organized_hash)
#   "Based on your search, we recommend the following:"
# end
