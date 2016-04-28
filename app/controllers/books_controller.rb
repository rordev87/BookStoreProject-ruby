class BooksController < ApplicationController
    def index
        @books = Book.all
        if params[:search]
            @books = Book.search(params[:search])
        else
            @books = Book.all
        end
    end
    
    def show
        @book = Book.find(params[:id])
    end    
    
    def new
    end
    
    def create
        @book = Book.new(book_params)
        @book.save
        redirect_to @book
    end
    
    private
        def book_params
            params.require(:book).permit(:title, :author_id, :description, :price, :format, :availability)
        end
end
