class MainController < ApplicationController
  def index
    @user = current_user
    if @user != nil
      @user.age = current_age(@user.birthdate)
      @user.current_weeks = current_weeks(@user.birthdate)
      @user.total_weeks = @user.total_life*52
      @user.save
    @percent = (@user.age.to_f/@user.total_life*100).round(1)
    @leftOverWeeksLived = @user.current_weeks - (@user.age*52)
    @notLivedWeeks = @user.total_weeks - @user.current_weeks
    @arrayMilestones = uniqWeeks(current_user.milestones.all)
    end
  end
end
