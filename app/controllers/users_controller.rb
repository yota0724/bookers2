class UsersController < ApplicationController
  def index
    @book = Book.new
    @user = current_user
    @users = User.all
  end
  
  def show
    @book = Book.find(params[:id])
    @user = User.find(params[:id])
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :body, :image)
  end

  def user_params
    params.require(:user).permit(:title, :body, :image)
  end
end
