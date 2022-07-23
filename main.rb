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
  when '7'
    puts 'Thank you for using the School library Application!'
    exit!
  else
    puts 'Invalid input. Try again!'
  end
  selecting
end

main