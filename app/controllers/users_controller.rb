class UsersController < ApplicationController

  def new
    # @user = User.new
    @book = Book.new
  end

  def index
    # @user = current_user
    # @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.all
    @books = @user.books
  end

  def create
    # book = Book.new(book_params)
    # book.save
    # redirect_to book_path(@book.id)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user.id)
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end


end
