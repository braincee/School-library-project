require './app'

puts 'Welcome to School Library Aplication!'

def main
  app = App.new
  app.start
end

def selecting
  case choices
  when '1'
    books_list
  when '2'
    peoples_list
  when '3'
    create_person
  when '4'
    create_book
  when '5'
    new_rental
  when '6'
    rental_list
  else
    exit_app
  end
  selecting
end

def exit_app
  puts 'Thanks for using the School Application!'
  exit
end

main
