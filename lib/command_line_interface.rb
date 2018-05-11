require 'colorize'
require 'artii'
require 'terminal-table'

valid_commands = ["movies", "movie", "books", "book", "shows", "show", "authors", "author", "games", "game"]

def no_rec_error_msg
  puts "I'm sorry, it looks like there are no recommendations in that category! Please try a different one!\n\n****************************\n\n".red.blink
end

def invalid_input
  puts "I'm sorry, that is not a valid command! Please try again! \n\n****************************\n\n".red.blink
end

def invalid_number
  puts "Oops! Invalid input! Please choose a number that correlates to a title!"
end

def make_table(title, array)
  rows = []
  array.flatten.each.with_index(1) do |element, i|
    rows << [i, element]
  end
  table = Terminal::Table.new :title => title.colorize(:color => :light_green, :background => :light_white), :headings => ["#", "NAME"], :rows => rows, :style => {:all_separators => true}
  puts "\n"
  puts table
end

def title
  title = Artii::Base.new :font => 'slant'
  puts ""
  puts title.asciify('THE RECOMMENDATION MACHINE').magenta
end

def welcome
  puts "\nWelcome to the Recommendation Machine! You can see a list of recommendations based off of Movies, Music, Books, Authors, TV Shows, or Games!".green.bold
end

def get_interest_from_user
  puts "\nWhat would you like to see recommendations based off of?\n".green
  interest = gets.chomp
end

def what_type?(h)
  loop do
    $i = 0
    puts "\n*Nice choice there bud!\n".cyan.italic
    puts "You can display recommendedations by categories: <Movies>, <Music>, <Books>, <Authors>, <Shows>, <Games>, or <All>!\n".green.bold
    puts "You can also display more information for each title by typing in the corresponding number once you've selected a category\n".cyan
    puts "--If you would like to start a new search, just type <New>.\n".green
    puts "--To exit program, type <Exit>.".red.bold
    puts "\n****************************".light_green
    puts "\nEnter category:\n".green.bold
    response = gets.chomp
    down_response = response.downcase
    puts "\n"

    if h == {}
      puts "Sorry, there doesn't seem to be anything there. Please try a new search.".red
      $i += 1
      break
    end

    if down_response == "exit"
      bye = ["Byeeeeeeeeee\n", "Bye Felicia\n", "See ya!\n", "auf Wiedersehen!\n", "Tschüß\n", "Ciao!\n", "Bon voyage\n",]
      puts bye.sample.magenta.bold
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
            make_table(key.upcase, array)
            loop do
              puts "\n\nIf you would like more information about any title, just type in the respective number!".light_green
              puts "\nIf you would like to view a different cateogory, just enter which you would like to display:".light_green
              puts "\nIf you would like to go back to view all categories, enter <Back>.\n".bold
              content_interest_num = gets.chomp.downcase
              if content_interest_num == "back"
                break
              end
              if content_interest_num != "new" && content_interest_num.to_i == 0 #check to see if input is string
                puts "\nPlease enter a number!".red.blink
              end
              num = (content_interest_num.to_i - 1) #turn user input to integer, and adjust for array index 0
              if (num + 1) > h["movie"].length || num < 0
                invalid_number
                break
              end
              puts "\n\n"
              synopsis = h["movie"][num].values
              puts synopsis.flatten
              puts "\nWould you like to save this title to your user list? Please type <Yes> or <No>."
              # save_response = gets.chomp.downcase
              # if save_response == "yes" || "no"
              #   if save_response == "yes"
              #     save
              #   end
              # end
              break
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
          make_table(key.upcase, array)
          loop do
            puts "\n\nIf you would like more information about any title, just type in the respective number!".light_green
            puts "\nIf you would like to view a different cateogory, just enter which you would like to display:".light_green
            content_interest_num = gets.chomp
            if content_interest_num == "back"
              break
            end
            if content_interest_num.to_i == 0
              puts "\nPlease enter a number!".red.blink
              break
            end
            num = (content_interest_num.to_i - 1)
            if (num + 1) > h["book"].length || num < 0
              invalid_number
              break
            end
            puts "\n\n"
            synopsis = h["book"][num].values
            puts synopsis.flatten
            break
          end
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
            make_table(key.upcase, array)
            loop do
              puts "\n\nIf you would like more information about any title, just type in the respective number!".light_green
              puts "\nIf you would like to view a different cateogory, just enter which you would like to display:".light_green
              content_interest_num = gets.chomp
              if content_interest_num == "back"
                break
              end
              if content_interest_num.to_i == 0
                puts "\nPlease enter a number!".red.blink
                break
              end
              num = (content_interest_num.to_i - 1)
              if (num + 1) > h["author"].length || num < 0
                invalid_number
                break
              end
              puts "\n\n"
              synopsis = h["author"][num].values
              puts synopsis.flatten
              break
            end
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
            make_table(key.upcase, array)
            loop do
              puts "\n\nIf you would like more information about any title, just type in the respective number!".light_green
              puts "\nIf you would like to view a different cateogory, just enter which you would like to display:".light_green
              content_interest_num = gets.chomp
              if content_interest_num == "back"
                break
              end
              if content_interest_num.to_i == 0
                puts "\nPlease enter a number!".red.blink
                break
              end
              num = (content_interest_num.to_i - 1)
              if (num + 1) > h["music"].length || num < 0
                invalid_number
                break
              end
              puts "\n\n"
              synopsis = h["music"][num].values
              puts synopsis.flatten
              break
            end
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
            make_table(key.upcase, array)
            loop do
              puts "\n\nIf you would like more information about any title, just type in the respective number!".light_green
              puts "\nIf you would like to view a different cateogory, just enter which you would like to display:".light_green
              content_interest_num = gets.chomp
              if content_interest_num == "back"
                break
              end
              if content_interest_num.to_i == 0
                puts "\nPlease enter a number!".red.blink
                break
              end
              num = (content_interest_num.to_i - 1)
              if (num + 1) > h["show"].length || num < 0
                invalid_number
                break
              end
              puts "\n\n"
              synopsis = h["show"][num].values
              puts synopsis.flatten
              break
            end
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
            make_table(key.upcase, array)
            loop do
              puts "\n\nIf you would like more information about any title, just type in the respective number!".light_green
              puts "\nIf you would like to view a different cateogory, just enter which you would like to display:".light_green
              content_interest_num = gets.chomp
              if content_interest_num == "back"
                break
              end
              if content_interest_num.to_i == 0
                puts "\nPlease enter a number!".red.blink
                break
              end
              num = (content_interest_num.to_i - 1)
              if (num + 1) > h["game"].length || num < 0
                invalid_number
                break
              end
              puts "\n\n"
              synopsis = h["game"][num].values
              puts synopsis.flatten
              break
            end
          end
        end
      end

    elsif down_response == "all"
      h.each do |key,value|
        array = []
        value.select do |hash|
          array << hash.keys
        end
      make_table(key.upcase, array)
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
