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
    shelves[i].add_book(b_name, a_name)
  end
  
  def remove_book(to_remove)
    shelves.each do |s|
      i = 0
      while i < s.books.length
        if s.books[i].title == to_remove
          s.books.delete_at(i)
          return true
        end
        i += 1
      end
    end  
  end
  
  def view_books
    puts "View books"
  end
  
end

class Shelf
  attr_reader :name, :books

  def initialize(s_name)
    @name = s_name
    @books = []
  end

  def add_book(b_name, a_name)
    @books.push(Book.new(b_name, a_name))
  end
  
end

class Book
  attr_reader :title, :author
  
  def initialize(title, author)
    @title = title
    @author = author
  end
  
end
  

#Methods
def add_book(my_library)
  puts
  print "Title: "
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
    my_library.add_book(i, b_name, a_name)
  else
    my_library.add_book(choice-1, b_name, a_name)
    
  end
      
end

def remove_book(my_library)
  puts
  print "Title of book to be removed: "
  to_remove = gets.chomp
  my_library.remove_book(to_remove)
  
end
  
def view_books(my_library)
  puts
  my_library.shelves.each do |s|
    puts s.name
    s.books.each do |b|
      print "#{b.title} "
    end
    puts
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
    remove_book(my_library)
    when 3
    view_books(my_library)
  end
end
  
