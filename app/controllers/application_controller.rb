class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def detail_list
	  details = Detail.find(:all)
    case @submission.risk
      when :private_passenger
        render :partial => "../shared/details/private_passenger", :locals => {:details => details }
      when :truck, :truck_tractor
        render :partial => "../shared/details/truck", :locals => {:details => details }
      when :trailer, :semi_trailer, :utility_service_trailer
        render :partial => "../shared/details/trailer", :locals => {:details => details }
    end
  end
  
  def deductibles_list
	  deductibles = Deductible.find(:all)
    case @submission.risk
      when :private_passenger
        render :partial => "../shared/deductibles/pp_ded", :locals => { :deductibles => deductibles }
      when :truck, :truck_tractor, :trailer, :semi_trailer, :utility_service_trailer
        render :partial => "../shared/deductibles/ttt_ded", :locals => { :deductibles => deductibles }
    end
  end
  
  
  def limits_list
	  limits = Limit.find(:all)
    render :partial => "../shared/deductibles/pp_ded", :locals => {:limits => limits }
  end
  
end
