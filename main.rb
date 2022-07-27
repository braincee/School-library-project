require_relative 'app'
require_relative 'input_details'
require_relative 'list_details'
require './save_data'
require './read_data'

@my_app = App.new
read_data
def main
  app_description

  option = gets.chomp.to_i

  select_option(option)
end

def app_description
  puts 'Welcome to School library App!'
  puts ''
  puts 'Please choose an option by entering a number:'
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
end

def select_option(option)
  case option
  when 1..2, 6
    list_details(option)
    main
  when 3..5
    input_details(option)
    main
  when 7
    puts 'Goodbye'
    save_data
    exit
  else
    puts 'Choose a correct option'
    main
  end
end

main
