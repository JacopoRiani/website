class BooksController < ApplicationController
  def about
    @books = Book.all
  end

  def ikigai
  end

  def Nudge
  end

  def Ferrari
  end

  def search
    case params[:search][:book]
    when 'ikigai'
      redirect_to ikigai_path
    when 'nudge'
      redirect_to nudge_path
    when 'ferrari'
      redirect_to ferrari_path
    else
      # Handle invalid selection or default redirection
      redirect_to root_path
    end
  end

  # def show
  #   @book = Book.find(params[:id])
  # end

  # private

  # def book_params
  #   params.require(:book).permit(:title, :subtitle, :description)
  # end
end
