class DetailsController < ApplicationController
  include CurrentSubmission
  before_action :set_submission, only: [:create]
  before_action :set_detail, only: [:show, :edit, :update, :destroy]

  # GET /details
  # GET /details.json
  def index
    @details = Detail.all
  end

  # GET /details/1
  # GET /details/1.json
  def show
  end

  # GET /details/new
  def new
    @detail = Detail.new
  end

  # GET /details/1/edit
  def edit
  end

  # POST /details
  # POST /details.json
  def create
    submission = Submission.find(params[:submisson_id])
    @detail = @submission.detail.build(submission: submission)

    respond_to do |format|
      if @detail.save
        format.html { redirect_to @detail.submission, notice: 'Detail was successfully created.' }
        format.json { render action: 'show', status: :created, location: @detail }
      else
        format.html { render action: 'new' }
        format.json { render json: @detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /details/1
  # PATCH/PUT /details/1.json
  def update
    respond_to do |format|
      if @detail.update(detail_params)
        format.html { redirect_to @detail, notice: 'Detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /details/1
  # DELETE /details/1.json
  def destroy
    @detail.destroy
    respond_to do |format|
      format.html { redirect_to details_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detail
      @detail = Detail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detail_params
      params.require(:detail).permit(:partial, :make, :model, :year, :cost_new, :age_group, :territory, :size_class, :load_capacity, :fleet_nonfleet, :spec_causes, :gvw, :gcw, :business_use, :radius_class, :risk_id)
    end
end
