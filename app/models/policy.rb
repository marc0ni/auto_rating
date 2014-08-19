class Policy < ActiveRecord::Base
  belongs_to :deductibles
  belongs_to :limits
  belongs_to :premia
  has_one :submission
  belongs_to :proposal
  
  before_destroy :ensure_not_referenced_by_any_submission
  before_destroy :ensure_not_referenced_by_any_proposal
  
  private
  
    def ensure_not_referenced_by_any_submission
      if submission.empty?
        return true
      else
        errors.add(:base, 'Submission present')
        return false
      end
    end
    
    def ensure_not_referenced_by_any_proposal
      if proposal.empty?
        return true
      else
        errors.add(:base, 'Proposal present')
        return false
      end
    end
end
