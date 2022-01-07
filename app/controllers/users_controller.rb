class UsersController < ApplicationController

  def index
    @user = current_user
    @users = User.all
    @book = Book.new
  end

  def show
    @user = current_user
    @users = User.find(params[:id])
    @books = @users.books
    @book = Book.new
  end

  def edit
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
    redirect_to user_path(@user), notice:"You have updated user successfully."
    else
    render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end
