class LifedataController < ApplicationController
  before_action :set_lifedatum, only: [:show, :edit, :update, :destroy]

  # GET /lifedata
  # GET /lifedata.json
  def index
    @lifedata = Lifedatum.all
  end

  # GET /lifedata/1
  # GET /lifedata/1.json
  def show
  end

  # GET /lifedata/new
  def new
    @lifedatum = Lifedatum.new
  end

  # GET /lifedata/1/edit
  def edit
  end

  # POST /lifedata
  # POST /lifedata.json
  def create
    @lifedatum = Lifedatum.new(lifedatum_params)

    respond_to do |format|
      if @lifedatum.save
        format.html { redirect_to @lifedatum, notice: 'Lifedatum was successfully created.' }
        format.json { render :show, status: :created, location: @lifedatum }
      else
        format.html { render :new }
        format.json { render json: @lifedatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lifedata/1
  # PATCH/PUT /lifedata/1.json
  def update
    respond_to do |format|
      if @lifedatum.update(lifedatum_params)
        format.html { redirect_to @lifedatum, notice: 'Lifedatum was successfully updated.' }
        format.json { render :show, status: :ok, location: @lifedatum }
      else
        format.html { render :edit }
        format.json { render json: @lifedatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lifedata/1
  # DELETE /lifedata/1.json
  def destroy
    @lifedatum.destroy
    respond_to do |format|
      format.html { redirect_to lifedata_url, notice: 'Lifedatum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lifedatum
      @lifedatum = Lifedatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lifedatum_params
      params.require(:lifedatum).permit(:country, :gho, :gender, :age)
    end
end
