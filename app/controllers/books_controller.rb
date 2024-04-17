class BooksController < ApplicationController
  def about
    @books = Book.all
  end

  # def show
  #   @book = Book.find(params[:id])
  # end

  # private

  # def book_params
  #   params.require(:book).permit(:title, :subtitle, :description)
  # end
end
