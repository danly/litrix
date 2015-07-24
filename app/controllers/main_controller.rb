class MainController < ApplicationController
  def index
    @guest = User.new
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


  def create
    @guest = User.new(guest_params)
    @guest.gender = "Both sexes"
    @guest.country = "United States of America"
    @lifedatum = Lifedatum.where(:country => @guest.country).where(:gender => @guest.gender)[0]
    @guest.total_life = @lifedatum.age
    @guest.total_weeks = @guest.total_life*52
    if @guest.age > @lifedatum.age
      @guest.age = @lifedatum.age
    end

    @guest.username = "Guest"
    @guest.first_name = "Guest"
    @guest.last_name = "Guest"
    @guest.password_digest = "NOPASSWORD"
    @guest.email = rand(0..100000).to_s + "@" + rand(0..100000).to_s + ".com"
    @guest.birthdate = guestAgeToDate(@guest.age)
    @guest.current_weeks = current_weeks(@guest.birthdate)

    respond_to do |format|
      if @guest.save
        login(@guest)
        current_user.milestones.create({:title => "Birth", :note => "You were introduced to the world", :year => 0, :week=> "1"})
        current_user.milestones.create({:title => "Supposed Death", :note => "You are on borrowed time now", :year => current_user.total_life, :week=> current_user.total_weeks.to_s})
        format.html { redirect_to root_path, notice: 'Guest was successfully created.' }
        format.json { render :show, status: :created, location: @guest }
      else
        format.html { render :index }
        format.json { render json: @guest.errors, status: :unprocessable_entity }
      end
    end



  end

  private
    def guest_params
      params.require(:user).permit(:age)
    end

end
