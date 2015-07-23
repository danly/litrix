class MilestonesController < ApplicationController
  before_action :set_milestone, only: [:show, :edit, :update, :destroy]


  def index_week
    @milestones = current_user.milestones.all
  end

  def show_week
    @milestones = current_user.milestones.where(:week => params[:week])
  end

  def new_milestone_by_week
    @milestone = Milestone.new
    @specificWeek = params[:week].to_i
    @specificAge = @specificWeek/52
    @ordinalWeek = ordinal(@specificWeek)
    @yearText = ageYearText(@specificAge, @specificWeek)
  end

  # GET /milestones
  # GET /milestones.json
  def index
    @milestones = current_user.milestones.all
  end

  # GET /milestones/1
  # GET /milestones/1.json
  def show
  end

  # GET /milestones/new
  def new
    @milestone = Milestone.new
  end

  # GET /milestones/1/edit
  def edit
    @milestone = current_user.milestones.find(params[:id])
    @specificWeek = @milestone.week
    @specificAge = @specificWeek/52
    @ordinalWeek = ordinal(@specificWeek)
    @yearText = ageYearText(@specificAge, @specificWeek)
  end

  # POST /milestones
  # POST /milestones.json
  def create
    @milestone = current_user.milestones.new(milestone_params)
    @milestone.year = @milestone.week/52
    respond_to do |format|

      if @milestone.save
        format.html { redirect_to root_path, notice: 'Milestone was successfully created.' }
        format.json { render :show, status: :created, location: @milestone }
      else
        format.html { render :new }
        format.json { render json: @milestone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /milestones/1
  # PATCH/PUT /milestones/1.json
  def update
    respond_to do |format|
      if @milestone.update(milestone_params)
        @milestone.year = @milestone.week/52
        format.html { redirect_to root_path, notice: 'Milestone was successfully updated.' }
        format.json { render :show, status: :ok, location: @milestone }
      else
        format.html { render :edit }
        format.json { render json: @milestone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /milestones/1
  # DELETE /milestones/1.json
  def destroy
    @milestone.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Milestone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_milestone
      @milestone = current_user.milestones.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def milestone_params
      params.require(:milestone).permit(:title, :note, :year, :week)
    end
end
