class RubyController < ApplicationController
  def index
    @title = "main"
    @ruby_books = Book.find(:all) 
  end
  
  def sort_by_price
    @title = "sort_by_price"
    @ruby_books = Book.find(:all).sort_by { |book| book.price }
  end


  def title
    @title = "sort_by_title"
    @ruby_books = Book.find(:all).sort_by { |book| book.title.split.count }
  end

  def author
    @title = "sort_by_author_name"
    @ruby_books = Book.find(:all).sort_by { |book| book.author }
  end
end
