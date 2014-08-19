class SubmissionsController < ApplicationController
  include CurrentSubmission
  before_action :set_submission, only: [:show, :edit, :update, :destroy]
  before_action :set_risk, only: [:show, :edit, :update, :destroy]

  # GET /submissions
  # GET /submissions.json
  def index
    @submissions = Submission.all
  end
  
  def details
    @input = {"risk_id" => nil, "private_passenger" => nil, "truck" => nil, "truck_tractor" => nil, 
    "trailer" => nil, "semi_trailer" => nil, "utility_service_trailer" => nil}  
    @input["risk_id"] = params[:risk_id]  
    @input["private_passenger"] = params[:private_passenger]  
    @input["truck"] = params[:truck]
    @input["truck_tractor"] = params[:truck_tractor]
    @input["trailer"] = params[:trailer]
    @input["semi_trailer"] = params[:semi_trailer]     
    @input["utility_service_trailer"] = params[:utility_service_trailer]   
    
    #Whatever your method needs to do, build a query, etc.
    
    respond_to do |format|
      format.js
    end  
  end
  
  def deductibles
    @input = {"risk_id" => nil, "private_passenger" => nil, "truck" => nil, "truck_tractor" => nil, 
    "trailer" => nil, "semi_trailer" => nil, "utility_service_trailer" => nil}  
    @input["risk_id"] = params[:risk_id]  
    @input["private_passenger"] = params[:private_passenger]  
    @input["truck"] = params[:truck]
    @input["truck_tractor"] = params[:truck_tractor]
    @input["trailer"] = params[:trailer]
    @input["semi_trailer"] = params[:semi_trailer]     
    @input["utility_service_trailer"] = params[:utility_service_trailer]   
    
    #Whatever your method needs to do, build a query, etc.
    
    respond_to do |format|
      format.js
    end   
  end
  
  def limits
    @input = {"risk_id" => nil, "private_passenger" => nil, "truck" => nil, "truck_tractor" => nil, 
    "trailer" => nil, "semi_trailer" => nil, "utility_service_trailer" => nil}  
    @input["risk_id"] = params[:risk_id]  
    @input["private_passenger"] = params[:private_passenger]  
    @input["truck"] = params[:truck]
    @input["truck_tractor"] = params[:truck_tractor]
    @input["trailer"] = params[:trailer]
    @input["semi_trailer"] = params[:semi_trailer]     
    @input["utility_service_trailer"] = params[:utility_service_trailer]   
    
    #Whatever your method needs to do, build a query, etc.
    
    respond_to do |format|
      format.js
    end  
  end

  # GET /submissions/1
  # GET /submissions/1.json
  def show
  end

  # GET /submissions/new
  def new
    @submission = Submission.new
  end

  # GET /submissions/1/edit
  def edit
  end

  # POST /submissions
  # POST /submissions.json
  def create
    @submission = Submission.new(submission_params)

    respond_to do |format|
      if @submission.save
        format.html { redirect_to @submission, notice: 'Submission was successfully created.' }
        format.json { render action: 'show', status: :created, location: @submission }
      else
        format.html { render action: 'new' }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /submissions/1
  # PATCH/PUT /submissions/1.json
  def update
    respond_to do |format|
      if @submission.update(submission_params)
        format.html { redirect_to @submission, notice: 'Submission was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /submissions/1
  # DELETE /submissions/1.json
  def destroy
    @submission.destroy
    respond_to do |format|
      format.html { redirect_to submissions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_submission
      @submission = Submission.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def submission_params
      params.require(:submission).permit(:sub_no, :eff_date, :exp_date, :agent_id, :account_id, :policy_id, :proposal_id, :risk_id)
    end
end
