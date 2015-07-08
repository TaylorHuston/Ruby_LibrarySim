#Classes
class Library
  attr_reader :shelves
  
  def initialize
    @shelves = []
  end
  
  def add_shelf(s_name)
#   i = 0
    
#    while i < shelves.length 
#      if s_name == shelves[i].name 
#        return false
#      end
#      i += 1
#    end
    
    shelves.push(Shelf.new(s_name))
    
    return true
  
  end
  
  def add_book(i, b_name, a_name)
    puts "Add book"
  end
  
  def remove_book
    puts "Remove book"
  end
  
  def view_books
    puts "View books"
  end
  
end

class Shelf
  attr_reader :name
  
  def initialize(s_name)
    @name = s_name
  end
  
end

class Book
  
  def initialize(title, author)
    @title = title
    @author = author
  end
  
end
  

#Methods
def add_book(my_library)
  print "Book name: "
  b_name = gets.chomp
  print "Author: "
  a_name = gets.chomp
  
  puts "0: New shelf"
  i = 0
  while i < my_library.shelves.length
    puts "#{i+1}: #{my_library.shelves[i].name}"
    i+=1
  end
      
  choice = gets.chomp.to_i
      
  if choice == 0
    print "Shelf name: "
    s_name = gets.chomp
    my_library.add_shelf(s_name)
    #my_library.add_book(b_name, a_name)
  else
    puts "#{my_library.shelves[choice-1].name}"
    
  end
      
end


#Main
my_library = Library.new

choice = 1

while choice != 0 do
  puts
  puts "What would you like to do?"
  puts "0: Quit"
  puts "1: Add a book"
  puts "2: Remove a book"
  puts "3: View all books"
  puts
  
  print "Selection: "
  choice = gets.chomp.to_i
  
  case choice
    when 1
    add_book(my_library)
    when 2
      my_library.remove_book
    when 3
      my_library.view_books
  end
end
  
