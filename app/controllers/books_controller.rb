class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new(book_params)
  end
  
  def show
    @book = Book.find(book_paramas)
  end  
  
  def edit
    @book = Book.find(book_params)
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/books'
    
  end  
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end  
end
