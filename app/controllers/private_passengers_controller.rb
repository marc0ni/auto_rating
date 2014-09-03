class PrivatePassengersController < ApplicationController
  before_action :set_private_passenger, only: [:show, :edit, :update, :destroy]

  # GET /private_passengers
  # GET /private_passengers.json
  def index
    @private_passengers = PrivatePassenger.all
  end

  # GET /private_passengers/1
  # GET /private_passengers/1.json
  def show
  end

  # GET /private_passengers/new
  def new
    @private_passenger = PrivatePassenger.new
  end

  # GET /private_passengers/1/edit
  def edit
  end

  # POST /private_passengers
  # POST /private_passengers.json
  def create
    @private_passenger = PrivatePassenger.new(private_passenger_params)

    respond_to do |format|
      if @private_passenger.save
        format.html { redirect_to @private_passenger, notice: 'Private passenger was successfully created.' }
        format.json { render action: 'show', status: :created, location: @private_passenger }
      else
        format.html { render action: 'new' }
        format.json { render json: @private_passenger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /private_passengers/1
  # PATCH/PUT /private_passengers/1.json
  def update
    respond_to do |format|
      if @private_passenger.update(private_passenger_params)
        format.html { redirect_to @private_passenger, notice: 'Private passenger was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @private_passenger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /private_passengers/1
  # DELETE /private_passengers/1.json
  def destroy
    @private_passenger.destroy
    respond_to do |format|
      format.html { redirect_to private_passengers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_private_passenger
      @private_passenger = PrivatePassenger.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def private_passenger_params
      params.require(:private_passenger).permit(:territory, :age_group, :cost_new, :make, :model, :year)
    end
end
