class MainController < ApplicationController
  def index
    @user = current_user
    if @user != nil
      @user.age = current_age(@user.birthdate)
      @user.current_weeks = @user.age*52
      @user.total_weeks = @user.total_life*52
      @user.save
    end
  end
end
