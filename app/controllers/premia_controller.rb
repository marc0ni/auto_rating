class PremiaController < ApplicationController
  before_action :set_premium, only: [:show, :edit, :update, :destroy]

  # GET /premia
  # GET /premia.json
  def index
    @premia = Premium.all
  end

  # GET /premia/1
  # GET /premia/1.json
  def show
  end

  # GET /premia/new
  def new
    @premium = Premium.new
  end

  # GET /premia/1/edit
  def edit
  end

  # POST /premia
  # POST /premia.json
  def create
    @premium = Premium.new(premium_params)

    respond_to do |format|
      if @premium.save
        format.html { redirect_to @premium, notice: 'Premium was successfully created.' }
        format.json { render action: 'show', status: :created, location: @premium }
      else
        format.html { render action: 'new' }
        format.json { render json: @premium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /premia/1
  # PATCH/PUT /premia/1.json
  def update
    respond_to do |format|
      if @premium.update(premium_params)
        format.html { redirect_to @premium, notice: 'Premium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @premium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /premia/1
  # DELETE /premia/1.json
  def destroy
    @premium.destroy
    respond_to do |format|
      format.html { redirect_to premia_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_premium
      @premium = Premium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def premium_params
      params.require(:premium).permit(:comp_base, :coll_base, :otc_base, :risk_id)
    end
end
