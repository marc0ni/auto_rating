module SubmissionsHelper
  
  def detail_list
	  details = Detail.find(:all)
    case @submission.risk
      when :private_passenger
        render :partial => "../shared/details/private_passenger", :locals => {:details => details}
      when :truck, :truck_tractor
        render :partial => "../shared/details/truck", :locals => {:details => details}
      when :trailer, :semi_trailer, :utility_service_trailer
        render :partial => "../shared/details/trailer", :locals => {:details => details}
    end
  end
  
  def deductible_list
	  deductibles = Deductible.find(:all)
    if @submission.risk == "private_passenger"
      render :partial => "../shared/deductibles/pp_ded", :locals => { :deductibles => deductibles}
    else
      render :partial => "../shared/deductibles/ttt_ded", :locals => { :deductibles => deductibles}
    end
  end
  
  def limit_list
	  limits = Limit.find(:all)
    render :partial => "../shared/limits/limits", :locals => {:limits => limits}
  end
  
  def proposal_list
	  proposals = Proposal.find(:all)
    case @submission.risk
      when :private_passenger
        render :partial => "../shared/proposals/pp_prop", :locals => {:proposals => proposals}
      when :truck, :truck_tractor
        render :partial => "../shared/proposals/truck_prop", :locals => {:proposals => proposals}
      when :trailer, :semi_trailer, :utility_service_trailer
        render :partial => "../shared/proposals/trailer_prop", :locals => {:proposals => proposals}
    end
  end
    
end
