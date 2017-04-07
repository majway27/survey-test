class TabulationsController < ApplicationController
  before_action :set_tabulation, only: [:show, :edit, :update, :destroy]

  # GET /tabulations
  # GET /tabulations.json
  def index
    @tabulations = Tabulation.all
  end

  # GET /tabulations/1
  # GET /tabulations/1.json
  def show
  end

  # GET /tabulations/new
  def new
    @tabulation = Tabulation.new
  end
  
  def generate
    Tabulation.generate_tabs(params[:id])
    return 200
  end

  # GET /tabulations/1/edit
  def edit
  end

  # POST /tabulations
  # POST /tabulations.json
  def create
    @tabulation = Tabulation.new(tabulation_params)

    respond_to do |format|
      if @tabulation.save
        format.html { redirect_to @tabulation, notice: 'Tabulation was successfully created.' }
        format.json { render :show, status: :created, location: @tabulation }
      else
        format.html { render :new }
        format.json { render json: @tabulation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tabulations/1
  # PATCH/PUT /tabulations/1.json
  def update
    respond_to do |format|
      if @tabulation.update(tabulation_params)
        format.html { redirect_to @tabulation, notice: 'Tabulation was successfully updated.' }
        format.json { render :show, status: :ok, location: @tabulation }
      else
        format.html { render :edit }
        format.json { render json: @tabulation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tabulations/1
  # DELETE /tabulations/1.json
  def destroy
    @tabulation.destroy
    respond_to do |format|
      format.html { redirect_to tabulations_url, notice: 'Tabulation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tabulation
      @tabulation = Tabulation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tabulation_params
      params.require(:tabulation).permit(:count, :survey_id, :question_id, :option_id)
    end
end
