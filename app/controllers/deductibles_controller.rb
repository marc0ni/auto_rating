class DeductiblesController < ApplicationController
  include CurrentSubmission
  before_action :set_submission, only: [:create]
  before_action :set_deductible, only: [:show, :edit, :update, :destroy]

  # GET /deductibles
  # GET /deductibles.json
  def index
    @deductibles = Deductible.all
  end

  # GET /deductibles/1
  # GET /deductibles/1.json
  def show
  end

  # GET /deductibles/new
  def new
    @deductible = Deductible.new
  end

  # GET /deductibles/1/edit
  def edit
  end

  # POST /deductibles
  # POST /deductibles.json
  def create
    @submission = Submission.find(params[:submission_id])
    @deductible = @submission.deductible.build(submission: submission)

    respond_to do |format|
      if @deductible.save
        format.html { redirect_to @deductible.submission, notice: 'Deductible was successfully created.' }
        format.json { render action: 'show', status: :created, location: @deductible }
      else
        format.html { render action: 'new' }
        format.json { render json: @deductible.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deductibles/1
  # PATCH/PUT /deductibles/1.json
  def update
    respond_to do |format|
      if @deductible.update(deductible_params)
        format.html { redirect_to @deductible, notice: 'Deductible was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @deductible.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deductibles/1
  # DELETE /deductibles/1.json
  def destroy
    @deductible.destroy
    respond_to do |format|
      format.html { redirect_to deductibles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deductible
      @deductible = Deductible.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deductible_params
      params.require(:deductible).permit(:partial, :spec_causes, :comp, :coll, :risk_id)
    end
end
