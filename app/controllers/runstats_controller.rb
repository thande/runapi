class RunstatsController < ApplicationController
  before_action :set_runstat, only: [:show, :edit, :update, :destroy]

  # GET /runstats
  # GET /runstats.json
  def index
    @runstats = Runstat.all
  end

  # GET /runstats/1
  # GET /runstats/1.json
  def show
  end

  # GET /runstats/new
  def new
    @runstat = Runstat.new
  end

  # GET /runstats/1/edit
  def edit
  end

  # POST /runstats
  # POST /runstats.json
  def create
    @runstat = Runstat.new(runstat_params)

    respond_to do |format|
      if @runstat.save
        format.html { redirect_to @runstat, notice: 'Runstat was successfully created.' }
        format.json { render :show, status: :created, location: @runstat }
      else
        format.html { render :new }
        format.json { render json: @runstat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /runstats/1
  # PATCH/PUT /runstats/1.json
  def update
    respond_to do |format|
      if @runstat.update(runstat_params)
        format.html { redirect_to @runstat, notice: 'Runstat was successfully updated.' }
        format.json { render :show, status: :ok, location: @runstat }
      else
        format.html { render :edit }
        format.json { render json: @runstat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /runstats/1
  # DELETE /runstats/1.json
  def destroy
    @runstat.destroy
    respond_to do |format|
      format.html { redirect_to runstats_url, notice: 'Runstat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_runstat
      @runstat = Runstat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def runstat_params
      params.require(:runstat).permit(:location, :user, :time)
    end
end
