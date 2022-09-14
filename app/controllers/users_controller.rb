class UsersController < ApplicationController
  def show
    @books = Book.all
    @book = User.find(params[:id])
    @user = current_user
  end

  def edit
  end

  def index
    @user = current_user
    @users = User.all
  end
end
