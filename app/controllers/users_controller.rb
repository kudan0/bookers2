class UsersController < ApplicationController

  def new
  end

  def index
    @user = current_user
    @users = User.all
    # @user = User.find(params{:id})
  end

  def show
     @user = User.find(params[:id])
  end

  def edit
  end

  def destroy
  end


end
