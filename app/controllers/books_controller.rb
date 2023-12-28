class BooksController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def update_book_name
    @book = Book.find(params[:id])
    respond_to do |format|
      @book.update(name: params[:book_name])
      format.js
    end
  end

  def bulk_delete_books
    #debugger
    sleep 0.5
    respond_to do |format| 
      @books = Book.where(id: params[:book_ids])
      @books.delete_all
      format.js
    end
  end
end
