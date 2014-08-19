module CurrentSubmission
  extend ActiveSupport::Concern
  
  private
  
    def set_submission
      @submission = Submission.find(session[:submission_id])
    rescue
      @submission = Submission.create
      session[:submission_id] = @submission.id
    end
end