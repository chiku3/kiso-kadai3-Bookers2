class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new
    @user.save
    redirect_to users_path(@user)
  end

  private
  
  def user_params
    params.require(:user).permit(:name, :body, :profile_image)
  end

end
