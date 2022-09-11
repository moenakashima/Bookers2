class BooksController < ApplicationController
  def new
  end

  def index
    @books= Book.all
    # @book= Book.find(params[:id])
  end

  def show
  end

  def edit
  end
end
