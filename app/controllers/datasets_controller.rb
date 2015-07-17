class DatasetsController < ApplicationController
  before_action :set_dataset, only: [:show, :edit, :update, :destroy]

  def show_set
    @dataset = Dataset.find_by(:title => params[:title])
    @title_params = @dataset.title_params.all
  end

  def index
    @datasets = Dataset.all
  end

  def new
    @dataset = Dataset.new
  end

  def create
    @dataset = current_user.datasets.new(dataset_params)
    contents = params[:title_param]

    respond_to do |format|  

      if @dataset.save
        contents[:note].length.times do |index|
          itemTitle = contents[:itemTitle][index]
          note  = contents[:note][index]
          date  = contents[:date][index]
          age = contents[:age][index]
          @dataset.title_params.create(:itemTitle => itemTitle, :note => note, :date => date, :age => age)
        end
        format.html { redirect_to dataset_path(@dataset), notice: 'Dataset was successfully created.' }
        format.json { render :show, status: :created, location: @dataset }
      else
        format.html { render :new }
        format.json { render json: @dataset.errors, status: :unprocessable_entity }
      end    
    end
  end

  def show
  end
  
  def edit
    @dataset = current_user.datasets.find(params[:id])
  end

  def update
    respond_to do |format|
      if @dataset.update(dataset_params)
        format.html { redirect_to dataset_path(@dataset), notice: 'Dataset was successfully updated.' }
        format.json { render :show, status: :ok, location: @dataset }
      else
        format.html { render :edit }
        format.json { render json: @dataset.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @dataset.destroy
    respond_to do |format|
      format.html { redirect_to datasets_url, notice: 'Dataset was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dataset
      @dataset = current_user.datasets.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dataset_params
      params.require(:dataset).permit(:title)
    end

end
