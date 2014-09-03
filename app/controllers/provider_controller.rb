class ProviderController < ApplicationController
  include CurrentSubmission
  before_action :set_submission
  def index
    @Risk = Risk.order(:risk)
  end
end
