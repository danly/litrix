class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.confirm(user_params)
    if @user
      login(@user)
      redirect_to root_path
    else
      redirect_to login_path
    end

  end

  def destroy
    @user = current_user
    logout
    if @user.username == "Guest" && @user.first_name == @user.last_name && @user.username == @user.first_name
      @user.destroy
    end
  end

  private
    def user_params
        params.require(:user).permit(:email, :password)
    end
end
